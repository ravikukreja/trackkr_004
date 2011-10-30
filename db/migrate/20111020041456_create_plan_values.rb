class CreatePlanValues < ActiveRecord::Migration
  def self.up
    create_table :plan_values do |t|
      t.integer :product_plan_id
      t.integer :day
      t.float :distance
      t.float :speed
      t.float :time
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :plan_values
  end
end
