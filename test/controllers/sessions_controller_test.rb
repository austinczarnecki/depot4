require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    valid_user = users(:one)
    post :create, name: valid_user.name, password: 'secret'
    assert_redirected_to admin_url
    assert_equal valid_user.id, session[:user_id]
  end

  test "should fail login" do
    invalid_user = users(:one)
    post :create, name: invalid_user.name, password: 'wrong'

    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    assert_redirected_to store_url
  end

end
