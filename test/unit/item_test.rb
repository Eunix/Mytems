require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "shouldn't create without name" do
    item = Item.new
    assert !item.save
  end

  test "should create an item without boxes and categories" do
    item = Item.create :name => "new item"
    assert_equal "new item", item.name
    assert_nil item.box
    assert_equal [], item.categories
  end

  test "should parse @ as box" do
    item = Item.create :name => "new item @kitchen"
    assert_equal "new item", item.name
    assert_equal "kitchen", item.box.name
  end

  test "should parse only first @ as box" do
    item = Item.create :name => "new item @kitchen @container"
    assert_equal "new item", item.name
    assert_equal "kitchen", item.box.name
  end

  test "should parse # as categories" do
    item = Item.create :name => "new item #one #two"
    assert_equal "new item", item.name
    assert (item.categories.map(&:name).include? "one")
    assert (item.categories.map(&:name).include? "two")
    assert_equal 2, item.categories.size
  end

  test "should parse only one box and all categories" do
    item = Item.create :name => "new item #one @some_box #two @another_box"
    assert_equal "new item", item.name
    assert_equal "some_box", item.box.name
    assert (item.categories.map(&:name).include? "one")
    assert (item.categories.map(&:name).include? "two")
    assert_equal 2, item.categories.size
  end
end
