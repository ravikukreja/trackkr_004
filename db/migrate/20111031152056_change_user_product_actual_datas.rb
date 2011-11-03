class ChangeUserProductActualDatas < ActiveRecord::Migration
  def self.up
      change_column :user_product_actual_datas, :actual_training_date,:date
    
  end

  def self.down
    change_column :user_product_actual_datas, :actual_training_date, :datetime
  end
end
