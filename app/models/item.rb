class Item < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name

  belongs_to :box
  has_and_belongs_to_many   :categories

  before_create :parse_name

  # We parse a name of box (after @-symbol) and categories (after #-symbol).
  # After that we leave only the name of an item. We use this method
  # only once after an initial creation of an item
  def parse_name
    boxes = name.scan(/@(\w+)/)
    if boxes.any?
      self.box = Box.find_or_create_by_name(boxes[0][0])
    end

    categories = name.scan(/#(\w+)/)
    categories.each do |category_name|
      self.categories << Category.find_or_create_by_name(category_name[0])
    end

    self.name = name.gsub(/@(\w+)|#(\w+)/, '').strip
  end

  # A search from index page
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
