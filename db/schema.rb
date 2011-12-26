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

ActiveRecord::Schema.define(:version => 20111224055648) do

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
    t.string   "name",          :null => false
    t.string   "image_url",     :null => false
    t.integer  "t_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "t_categories", :force => true do |t|
    t.string   "name",              :null => false
    t.string   "image_url",         :null => false
    t.integer  "trackkr_module_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trackkr_modules", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
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
    t.integer  "graph_id",             :limit => 255
    t.string   "graph_select_type"
    t.string   "graph_select_range"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_product_plans", :force => true do |t|
    t.integer  "user_id",          :null => false
    t.integer  "product_id",       :null => false
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
  end

end
