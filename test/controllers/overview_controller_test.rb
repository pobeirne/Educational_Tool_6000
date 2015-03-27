require 'test_helper'

class OverviewControllerTest < ActionController::TestCase
  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get quiz" do
    get :quiz
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
