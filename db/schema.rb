# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120225102550) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "dashboards", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.string   "authenticity_token"
  end

  create_table "graphs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "t_category_id"
    t.string   "name"
    t.string   "image"
    t.text     "description"
  end

  create_table "plan_values", :force => true do |t|
    t.integer  "product_plan_id"
    t.integer  "day"
    t.float    "distance"
    t.float    "speed"
    t.float    "time"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_plans", :force => true do |t|
    t.integer  "product_id"
    t.string   "product_plan_name"
    t.text     "product_plan_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name",           :null => false
    t.string   "image_location", :null => false
    t.integer  "t_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "share_dashboards", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "shared_plan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "t_categories", :force => true do |t|
    t.string   "name",              :null => false
    t.string   "image_location",    :null => false
    t.integer  "trackkr_module_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trackkr_modules", :force => true do |t|
    t.string   "name"
    t.string   "image_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_product_plan_datas", :force => true do |t|
    t.integer  "user_product_plan_id"
    t.date     "training_date"
    t.float    "actual_distance"
    t.float    "actual_speed"
    t.float    "actual_time"
    t.text     "actual_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "plan_distance"
    t.float    "plan_speed"
    t.float    "plan_time"
    t.string   "plan_notes"
  end

  create_table "user_product_plan_graphs", :force => true do |t|
    t.integer  "user_product_plan_id"
    t.string   "graph_select_type"
    t.string   "graph_select_range"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "graph_id"
    t.integer  "friend_product_plan_id"
  end

  create_table "user_product_plans", :force => true do |t|
    t.integer  "user_id",                :null => false
    t.integer  "product_id",             :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_plan_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "calendar_view_by"
    t.string   "distance_unit"
    t.string   "date_format"
    t.float    "goal_distance"
    t.float    "goal_speed"
    t.float    "goal_time"
    t.string   "calendar_display_field"
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contact_number"
    t.string   "reminder_option"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "auth_token"
    t.string   "avatar"
  end

end
