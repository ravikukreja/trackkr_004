require 'test_helper'

class PlanValuesControllerTest < ActionController::TestCase
  setup do
    @plan_value = plan_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_value" do
    assert_difference('PlanValue.count') do
      post :create, :plan_value => @plan_value.attributes
    end

    assert_redirected_to plan_value_path(assigns(:plan_value))
  end

  test "should show plan_value" do
    get :show, :id => @plan_value.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @plan_value.to_param
    assert_response :success
  end

  test "should update plan_value" do
    put :update, :id => @plan_value.to_param, :plan_value => @plan_value.attributes
    assert_redirected_to plan_value_path(assigns(:plan_value))
  end

  test "should destroy plan_value" do
    assert_difference('PlanValue.count', -1) do
      delete :destroy, :id => @plan_value.to_param
    end

    assert_redirected_to plan_values_path
  end
end
