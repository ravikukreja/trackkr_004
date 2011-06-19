require 'test_helper'

class RunningsControllerTest < ActionController::TestCase
  setup do
    @running = runnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:runnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create running" do
    assert_difference('Running.count') do
      post :create, :running => @running.attributes
    end

    assert_redirected_to running_path(assigns(:running))
  end

  test "should show running" do
    get :show, :id => @running.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @running.to_param
    assert_response :success
  end

  test "should update running" do
    put :update, :id => @running.to_param, :running => @running.attributes
    assert_redirected_to running_path(assigns(:running))
  end

  test "should destroy running" do
    assert_difference('Running.count', -1) do
      delete :destroy, :id => @running.to_param
    end

    assert_redirected_to runnings_path
  end
end
