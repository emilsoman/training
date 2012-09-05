require 'test_helper'

class GreetingsControllerTest < ActionController::TestCase
  test "should get Create" do
    get :Create
    assert_response :success
  end

  test "should get Delete" do
    get :Delete
    assert_response :success
  end

  test "should get Add" do
    get :Add
    assert_response :success
  end

end
