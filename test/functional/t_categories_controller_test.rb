require 'test_helper'

class TCategoriesControllerTest < ActionController::TestCase
  setup do
    @trackkr_module = trackkr_modules(:one)
  end

  test "should get index" do
    get trackkr_modules_t_categories_path(assigns(t_category).trackkr_modules), :trackkr_module_id => trackkr_modules(:one).id
    assert_redirect_to_trackkr_modules_t_categories_path(assigns(t_category).trackkr_modules)
    
end
=begin
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trackkr_module" do
    assert_difference('TrackkrModule.count') do
      post :create, :trackkr_module => @trackkr_module.attributes
    end

    assert_redirected_to trackkr_module_path(assigns(:trackkr_module))
  end

  test "should show trackkr_module" do
    get :show, :id => @trackkr_module.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trackkr_module.to_param
    assert_response :success
  end

  test "should update trackkr_module" do
    put :update, :id => @trackkr_module.to_param, :trackkr_module => @trackkr_module.attributes
    assert_redirected_to trackkr_module_path(assigns(:trackkr_module))
  end

  test "should destroy trackkr_module" do
    assert_difference('TrackkrModule.count', -1) do
      delete :destroy, :id => @trackkr_module.to_param
    end

    assert_redirected_to trackkr_modules_path
  end
=end
end
