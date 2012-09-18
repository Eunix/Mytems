require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should search item" do
    get :index, search: "one"
    assert_response :success
  end
end
