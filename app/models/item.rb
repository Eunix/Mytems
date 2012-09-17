class Item < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name

  belongs_to :box
  has_many   :categories

  before_create :parse_name

  # We parse a name of box (after @-symbol) and categories (after #-symbol).
  # After that we leave only the name of an item. We use this method
  # only once after an initial creation of an item
  def parse_name
    boxes = name.scan(/@(\w+)/)
    if boxes.any?
      self.box = Box.find_or_create_by_name(boxes[0][0])
    end

    #categories = name.scan(/#(\w)/)
    self.name = name.gsub(/@(\w+)|#(\w+)/, '').strip
  end
end
