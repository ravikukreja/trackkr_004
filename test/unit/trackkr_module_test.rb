require 'test_helper'
#fixtures :trackkr_modules

class TrackkrModuleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "Presence of name and location" do
    t_module_2=TrackkrModule.new(
      :name => swimming,
      :image_location=> abc.jpg,
      )
      assert t_module_2.invalid?
    
  end
end
