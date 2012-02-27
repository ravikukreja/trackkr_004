require 'test_helper'


class TrackkrModuleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "presence_true" do
    t_module=TrackkrModule.new(
    :name =>nil,
    :image_location => abc.jpg
    
    )
      assert t_module.valid?
    
  end
end
