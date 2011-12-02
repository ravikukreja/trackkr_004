class ChangeUserProductPlanGraph < ActiveRecord::Migration
  def self.up
    rename_column :user_product_plan_graphs, :graph_select, :graph_id
    change_column :user_product_plan_graphs, :graph_id, :integer
  end

  def self.down
    change_column :user_product_plan_graphs, :graph_id, :string
    rename_column :user_product_plan_graphs, :graph_id, :graph_select
  end
end
