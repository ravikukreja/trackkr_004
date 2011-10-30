require 'test_helper'

class ProductPlansControllerTest < ActionController::TestCase
  setup do
    @product_plan = product_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_plan" do
    assert_difference('ProductPlan.count') do
      post :create, :product_plan => @product_plan.attributes
    end

    assert_redirected_to product_plan_path(assigns(:product_plan))
  end

  test "should show product_plan" do
    get :show, :id => @product_plan.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_plan.to_param
    assert_response :success
  end

  test "should update product_plan" do
    put :update, :id => @product_plan.to_param, :product_plan => @product_plan.attributes
    assert_redirected_to product_plan_path(assigns(:product_plan))
  end

  test "should destroy product_plan" do
    assert_difference('ProductPlan.count', -1) do
      delete :destroy, :id => @product_plan.to_param
    end

    assert_redirected_to product_plans_path
  end
end
