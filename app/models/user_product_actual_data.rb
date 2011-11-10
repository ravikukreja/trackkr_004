class UserProductActualData < ActiveRecord::Base
  belongs_to :user_product
  
  
  def check_if_record_exists
    false
  end
end
