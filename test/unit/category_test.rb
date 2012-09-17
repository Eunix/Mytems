require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "shouldn't create without name" do
    category = Category.new
    assert !category.save
  end
end
