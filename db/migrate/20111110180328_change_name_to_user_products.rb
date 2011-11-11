class ChangeNameToUserProducts < ActiveRecord::Migration
  def self.up
        rename_table :user_products, :user_product_plans
    end 
    def self.down
        rename_table  :user_product_plans ,:user_products
    end
end
