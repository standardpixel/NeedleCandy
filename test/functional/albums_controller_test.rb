require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albums" do
    assert_difference('Albums.count') do
      post :create, :albums => { }
    end

    assert_redirected_to albums_path(assigns(:albums))
  end

  test "should show albums" do
    get :show, :id => albums(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => albums(:one).to_param
    assert_response :success
  end

  test "should update albums" do
    put :update, :id => albums(:one).to_param, :albums => { }
    assert_redirected_to albums_path(assigns(:albums))
  end

  test "should destroy albums" do
    assert_difference('Albums.count', -1) do
      delete :destroy, :id => albums(:one).to_param
    end

    assert_redirected_to albums_path
  end
end
