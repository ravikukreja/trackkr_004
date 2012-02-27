require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  test "blank_username" do
    user = User.new
    assert user.invalid?, "Username cannot be blank"
  end
  
  test "blank_email" do
    user = User.new
    assert user.invalid?, "Email cannot be blank"
  end
  
  test "blank_password" do
    user = User.new
    assert user.invalid?, "Password cannot be blank"
    
  end
  
end
