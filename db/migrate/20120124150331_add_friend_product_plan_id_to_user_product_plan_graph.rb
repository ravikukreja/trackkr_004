class AddFriendProductPlanIdToUserProductPlanGraph < ActiveRecord::Migration
  def self.up
    add_column :user_product_plan_graphs, :friend_product_plan_id, :integer
  end

  def self.down
    remove_column :user_product_plan_graphs, :friend_product_plan_id
  end
end
