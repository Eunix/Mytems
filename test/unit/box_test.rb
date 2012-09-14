require 'test_helper'

class BoxTest < ActiveSupport::TestCase
  test "shouldn't create without name" do
    box = Box.new
    assert !box.save
  end
end
