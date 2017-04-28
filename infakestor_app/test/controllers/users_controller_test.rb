require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should get create" do
    get users_new_url
    assert_response :success
  end
  
  test "should get user_params" do
    get user_params
    assert_response :success
  end
  
  test "should get logged_in_user" do
    get logged_in_user
    assert_response :success
  end
  
  test "should get correct_user" do
    get correct_user
    assert_response :success
  end
end
