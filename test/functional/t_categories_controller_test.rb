require 'test_helper'

class TCategoriesControllerTest < ActionController::TestCase
  

  test "should get index" do
    assert_redirected_to "trackkr_modules_t_categories_path",:trackkr_module_id => trackkr_modules(:one).id
    assert_response :success
    #assert_not_nil assigns(:t_categories)
  end
  
  


end 