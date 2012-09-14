require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "shouldn't create without name" do
    item = Item.new
    assert !item.save
  end
end
