class UserProductPlanGraph < ActiveRecord::Base
  belongs_to :graph
  belongs_to :user_product_plan
  validates :graph_id, :user_product_plan_id,:graph_select_type, :graph_select_range, :presence => true
  validates :graph_id, :user_product_plan_id, :friend_product_plan_id, :numericality => {:greater_than_or_equal_to => 1}
end
