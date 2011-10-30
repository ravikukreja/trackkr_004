class AddFieldsInUserProducts < ActiveRecord::Migration
  def self.up
    add_column :user_products, :product_plan_id, :integer
    add_column :user_products, :start_date, :date
    add_column :user_products, :end_date, :date
  end

  def self.down
    remove_column :user_products, :product_plan_id
    remove_column :user_products, :start_date
    remove_column :user_products, :end_date
  end
end
