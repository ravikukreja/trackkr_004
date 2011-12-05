class AddContactNumberToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :contact_number, :integer
    add_column :users, :reminder_option, :string
  end

  def self.down
    remove_column :users, :contact_number
    remove_column :users, :reminder_option
  end
end
