class CreateUserProducts < ActiveRecord::Migration
  def self.up
    create_table :user_products do |t|
      t.integer :user_id, :null => false
      t.integer :product_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :user_products
  end
end
