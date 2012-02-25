require 'test_helper'

class UserProductPlanDatasControllerTest < ActionController::TestCase
  setup do
    @user_product_plan_data = user_product_plan_datas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_product_plan_datas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_product_plan_data" do
    assert_difference('UserProductPlandata.count') do
      post :create, :user_product_plan_data => @user_product_plan_data.attributes
    end

    assert_redirected_to user_product_plan_data_path(assigns(:user_product_plan_data))
  end

  test "should show user_product_plan_data" do
    get :show, :id => @user_product_plan_data.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_product_plan_data.to_param
    assert_response :success
  end

  test "should update user_product_plan_data" do
    put :update, :id => @user_product_plan_data.to_param, :user_product_plan_data => @user_product_plan_data.attributes
    assert_redirected_to user_product_plan_data_path(assigns(:user_product_plan_data))
  end

  test "should destroy user_product_plan_data" do
    assert_difference('UserProductPlandata.count', -1) do
      delete :destroy, :id => @user_product_plan_data.to_param
    end

    assert_redirected_to user_product_plan_datas_path
  end
end
