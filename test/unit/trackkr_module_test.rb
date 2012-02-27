require 'test_helper'


class TrackkrModuleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "blank_name" do
    t_module=TrackkrModule.new(
    :name =>nil
    )
      assert t_module.invalid?,"Name cannot be blank"
    
  end
  
  test "blank_image location" do
    t_module=TrackkrModule.new(
    :image_location => nil
    )
      assert t_module.invalid?,"Location cannot be blank"
    
  end
end
