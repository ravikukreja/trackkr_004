require 'test_helper'

class PlanValueTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test Plan_values cannot be empty do
    assert.plan_value.invalid?
    
    assert true
  end
end
