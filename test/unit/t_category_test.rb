require 'test_helper'

class TCategoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  test "blank_image_location" do
    t_category=TCategory.new(
    :image_location => nil
    )
      assert t_category.invalid?,"Location cannot be blank"
  end
  
  test "blank_name" do
    t_category=TCategory.new(
    :name => nil
    )
      assert t_category.invalid?,"Name cannot be blank"
  end
  
  test "blank_trackkr_moduel" do
    t_category=TCategory.new(
    :trackkr_module_id => nil
    )
      assert t_category.invalid?,"Moduele ID cannot be blank"
  end
  
  
end
