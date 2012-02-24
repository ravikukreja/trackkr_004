require 'test_helper'

class ShareDashboardsControllerTest < ActionController::TestCase
  setup do
    @share_dashboard = share_dashboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:share_dashboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create share_dashboard" do
    assert_difference('ShareDashboard.count') do
      post :create, :share_dashboard => @share_dashboard.attributes
    end

    assert_redirected_to share_dashboard_path(assigns(:share_dashboard))
  end

  test "should show share_dashboard" do
    get :show, :id => @share_dashboard.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @share_dashboard.to_param
    assert_response :success
  end

  test "should update share_dashboard" do
    put :update, :id => @share_dashboard.to_param, :share_dashboard => @share_dashboard.attributes
    assert_redirected_to share_dashboard_path(assigns(:share_dashboard))
  end

  test "should destroy share_dashboard" do
    assert_difference('ShareDashboard.count', -1) do
      delete :destroy, :id => @share_dashboard.to_param
    end

    assert_redirected_to share_dashboards_path
  end
end
