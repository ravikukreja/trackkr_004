class CreateProductPlans < ActiveRecord::Migration
  def self.up
    create_table :product_plans do |t|
      t.integer :product_id
      t.string :product_plan_name
      t.text :product_plan_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :product_plans
  end
end
