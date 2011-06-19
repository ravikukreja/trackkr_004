class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name, :null => false
      t.string :image_url, :null => false
      t.integer :t_category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
