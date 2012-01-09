require 'test_helper'

class UserProductPlansControllerTest < ActionController::TestCase
  setup do
    @user_product = user_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_product" do
    assert_difference('UserProduct.count') do
      post :create, :user_product => @user_product.attributes
    end

    assert_redirected_to user_product_path(assigns(:user_product))
  end

  test "should show user_product" do
    get :show, :id => @user_product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_product.to_param
    assert_response :success
  end

  test "should update user_product" do
    put :update, :id => @user_product.to_param, :user_product => @user_product.attributes
    assert_redirected_to user_product_path(assigns(:user_product))
  end

  test "should destroy user_product" do
    assert_difference('UserProduct.count', -1) do
      delete :destroy, :id => @user_product.to_param
    end

    assert_redirected_to user_products_path
  end
end
