class ChangeNameofFriends < ActiveRecord::Migration
  def self.up
      rename_table :friends, :friendships

  end

  def self.down
    rename_table  :friendships, :friends
  end
end
