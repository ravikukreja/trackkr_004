class AddCalendarFieldDisplayInUserProductPlanGraph < ActiveRecord::Migration
  def self.up
    add_column :user_product_plans, :calendar_display_field, :string
  end

  def self.down
    remove_column :user_product_plans, :calendar_display_field
  end
end
