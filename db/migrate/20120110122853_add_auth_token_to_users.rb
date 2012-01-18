class AddAuthTokenToUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :auth_token
    add_column :users, :auth_token, :string
  end

  def self.down
    remove_column :users, :auth_token
  end
end
