require 'test_helper'

class UserProductSelectionTest < ActionDispatch::IntegrationTest
  fixtures :all

  # Replace this with your real tests.
  test "user_flow" do
    get '/'
    assert_response :success
    assert_template :index
    
    post_via_redirect "/", :username => 'admin', :password => 'admin@123'
    assert_equal "/", path
    
    get_via_redirect "trackkr_modules_t_categories_path"
    assert_response :success
  end
end
