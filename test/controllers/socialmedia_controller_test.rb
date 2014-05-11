require 'test_helper'

class SocialmediaControllerTest < ActionController::TestCase
  setup do
    @socialmedium = socialmedia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socialmedia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socialmedium" do
    assert_difference('Socialmedium.count') do
      post :create, socialmedium: { name: @socialmedium.name, password: @socialmedium.password, username: @socialmedium.username }
    end

    assert_redirected_to socialmedium_path(assigns(:socialmedium))
  end

  test "should show socialmedium" do
    get :show, id: @socialmedium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socialmedium
    assert_response :success
  end

  test "should update socialmedium" do
    patch :update, id: @socialmedium, socialmedium: { name: @socialmedium.name, password: @socialmedium.password, username: @socialmedium.username }
    assert_redirected_to socialmedium_path(assigns(:socialmedium))
  end

  test "should destroy socialmedium" do
    assert_difference('Socialmedium.count', -1) do
      delete :destroy, id: @socialmedium
    end

    assert_redirected_to socialmedia_path
  end
end
