require 'test_helper'

class UserProductPlanGraphsControllerTest < ActionController::TestCase
  setup do
    @user_product_plan_graph = user_product_plan_graphs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_product_plan_graphs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_product_plan_graph" do
    assert_difference('UserProductPlanGraph.count') do
      post :create, :user_product_plan_graph => @user_product_plan_graph.attributes
    end

    assert_redirected_to user_product_plan_graph_path(assigns(:user_product_plan_graph))
  end

  test "should show user_product_plan_graph" do
    get :show, :id => @user_product_plan_graph.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_product_plan_graph.to_param
    assert_response :success
  end

  test "should update user_product_plan_graph" do
    put :update, :id => @user_product_plan_graph.to_param, :user_product_plan_graph => @user_product_plan_graph.attributes
    assert_redirected_to user_product_plan_graph_path(assigns(:user_product_plan_graph))
  end

  test "should destroy user_product_plan_graph" do
    assert_difference('UserProductPlanGraph.count', -1) do
      delete :destroy, :id => @user_product_plan_graph.to_param
    end

    assert_redirected_to user_product_plan_graphs_path
  end
end
