class ModifyUserProductPlan < ActiveRecord::Migration
  def self.up
    add_column :user_product_plans, :calendar_view_by, :string
    add_column :user_product_plans, :distance_unit, :string
    add_column :user_product_plans, :date_format, :string
  end

  def self.down
    remove_column :user_product_plans, :calendar_view_by, :string
    remove_column :user_product_plans, :distance_unit, :string
    remove_column :user_product_plans, :date_format, :string
  end
end
