class RemoveColumnFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :product1
    remove_column :users, :product2
    remove_column :users, :product3
    remove_column :users, :product4
    remove_column :users, :product5
  end

  def self.down
    add_column :users, :product1, :integer
    add_column :users, :product2, :integer
    add_column :users, :product3, :integer
    add_column :users, :product4, :integer
    add_column :users, :product5, :integer
  end
end
