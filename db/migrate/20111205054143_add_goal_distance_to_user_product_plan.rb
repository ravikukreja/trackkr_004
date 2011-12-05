class AddGoalDistanceToUserProductPlan < ActiveRecord::Migration
  def self.up
    add_column :user_product_plans, :goal_distance, :float
    add_column :user_product_plans, :goal_speed, :float
    add_column :user_product_plans, :goal_time, :float
  end

  def self.down
    remove_column :user_product_plans, :goal_distance
    remove_column :user_product_plans, :goal_speed
    remove_column :user_product_plans, :goal_time
  end
end
