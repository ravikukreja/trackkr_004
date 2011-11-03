class CreateUserProductActualDatas < ActiveRecord::Migration
  def self.up
      rename_column :user_product_actual_datas, :date, :actual_training_date
    
  end

  def self.down
    rename_column :user_product_actual_datas, :actual_training_date, :date
  end
end
