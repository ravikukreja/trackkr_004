class CreateUserProductActualDatas < ActiveRecord::Migration
  def self.up
    create_table :user_product_actual_datas do |t|
      t.integer :user_product_id
      t.date :actual_training_date
      t.float :actual_distance
      t.float :actual_speed
      t.float :actual_time
      t.text :actual_notes

      t.timestamps
    end
  end

  def self.down
    drop_table :user_product_actual_datas
  end
end
