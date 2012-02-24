require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "presence" do
    user = User.new
    assert !user.save
  end
end
