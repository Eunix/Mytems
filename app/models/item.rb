class Item < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name

  belongs_to :box

  before_create :parse_name

  # We parse a name of box after @-symbol and categories after #-symbol.
  # After that we remain only the name of an item
  def parse_name

  end
end
