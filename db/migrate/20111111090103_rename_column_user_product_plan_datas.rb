class RenameColumnUserProductPlanDatas < ActiveRecord::Migration
  def self.up
    rename_column :user_product_plan_datas, :user_product_id, :user_product_plan_id
    
  end

  def self.down
     rename_column :user_product_plan_datas,  :user_product_plan_id, :user_product_id
  end
end
