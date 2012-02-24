class AddPlanFieldsToUserProductActualData < ActiveRecord::Migration
  def self.up
   add_column :user_product_actual_datas, :plan_distance, :float
   add_column :user_product_actual_datas, :plan_speed,    :float
   add_column :user_product_actual_datas, :plan_time,     :float
   add_column :user_product_actual_datas, :plan_notes,    :string
  end


  def self.down
   remove_column :user_product_actual_datas, :plan_distance, :float
   remove_column :user_product_actual_datas, :plan_speed,    :float
   remove_column :user_product_actual_datas, :plan_time,     :float
   remove_column :user_product_actual_datas, :plan_notes,    :string
  end
end
