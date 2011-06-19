class CreateTCategories < ActiveRecord::Migration
  def self.up
    create_table :t_categories do |t|
      t.string :name, :null => false
      t.string :image_url, :null => false
      t.integer :trackkr_module_id

      t.timestamps
    end
  end

  def self.down
    drop_table :t_categories
  end
end
