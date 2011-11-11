class UserProductActualData < ActiveRecord::Base
  belongs_to :user_product_plan
  
  
  def check_if_record_exists
    false
  end
end
