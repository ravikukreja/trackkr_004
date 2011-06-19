require 'test_helper'

class TrackkrhomesControllerTest < ActionController::TestCase
  setup do
    @trackkrhome = trackkrhomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trackkrhomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trackkrhome" do
    assert_difference('Trackkrhome.count') do
      post :create, :trackkrhome => @trackkrhome.attributes
    end

    assert_redirected_to trackkrhome_path(assigns(:trackkrhome))
  end

  test "should show trackkrhome" do
    get :show, :id => @trackkrhome.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trackkrhome.to_param
    assert_response :success
  end

  test "should update trackkrhome" do
    put :update, :id => @trackkrhome.to_param, :trackkrhome => @trackkrhome.attributes
    assert_redirected_to trackkrhome_path(assigns(:trackkrhome))
  end

  test "should destroy trackkrhome" do
    assert_difference('Trackkrhome.count', -1) do
      delete :destroy, :id => @trackkrhome.to_param
    end

    assert_redirected_to trackkrhomes_path
  end
end
