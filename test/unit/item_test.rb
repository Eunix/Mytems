require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "shouldn't create without name" do
    item = Item.new
    assert !item.save
  end

  test "should parse @ as box" do
    item = Item.create :name => "new item @kitchen"
    assert_equal "new item", item.name
    assert_equal "kitchen", item.box.name
  end
end
