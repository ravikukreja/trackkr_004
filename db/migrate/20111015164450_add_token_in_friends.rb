class AddTokenInFriends < ActiveRecord::Migration
  def self.up
    add_column :friends, :authenticity_token, :string
  end

  def self.down
    remove_column :friends, :authenticity_token
  end
end
