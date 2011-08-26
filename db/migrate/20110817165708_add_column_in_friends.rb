class AddColumnInFriends < ActiveRecord::Migration
  def self.up
    add_column :friends, :status, :string
  end

  def self.down
    remove_column :friends,:status
  end
end
