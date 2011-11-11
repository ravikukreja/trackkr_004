class ChangeNameOfUserProductActualDatas < ActiveRecord::Migration
   def self.up
        rename_table :user_product_actual_datas, :user_product_plan_datas
    end 
    def self.down
        rename_table  :user_product_plan_datas, :user_product_actual_datas
    end
end
