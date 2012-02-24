class ChangeUserProductPlanGraph < ActiveRecord::Migration
  def self.up
    remove_column :user_product_plan_graphs, :graph_select
    add_column :user_product_plan_graphs, :graph_id, :integer
  end

  def self.down
    remove_column :user_product_plan_graphs, :graph_id
    add_column :user_product_plan_graphs, :graph_select, :string
  end
end
