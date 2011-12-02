class UserProductPlanGraph < ActiveRecord::Base
  belongs_to :graph
  belongs_to :user_product_plan
end
