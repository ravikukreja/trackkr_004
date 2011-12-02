class CreateUserProductPlanGraphs < ActiveRecord::Migration
  def self.up
    create_table :user_product_plan_graphs do |t|
      t.integer :user_product_plan_id
      t.string :graph_select
      t.string :graph_select_type
      t.string :graph_select_range

      t.timestamps
    end
  end

  def self.down
    drop_table :user_product_plan_graphs
  end
end
