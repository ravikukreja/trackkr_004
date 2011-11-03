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

ActiveRecord::Schema.define(:version => 20111103035707) do

  create_table "dashboards", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.string   "authenticity_token"
  end

  create_table "graphs", :force => true do |t|
    t.date     "training_date"
    t.integer  "planned_distance"
    t.integer  "actual_distance"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "user_product_actual_datas", :force => true do |t|
    t.integer  "user_product_id"
    t.date     "actual_training_date"
    t.float    "actual_distance"
    t.float    "actual_speed"
    t.float    "actual_time"
    t.text     "actual_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_products", :force => true do |t|
    t.integer  "user_id",         :null => false
    t.integer  "product_id",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_plan_id"
    t.date     "start_date"
    t.date     "end_date"
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
  end

end
