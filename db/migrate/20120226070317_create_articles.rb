class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :username
      t.string :email
      t.integer :contact_number
      t.string :reminder_option

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
