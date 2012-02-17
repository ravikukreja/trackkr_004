# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


#User.create(:name=>"admin",:password=>"admin@123",:password_confirmation=>"admin@123",:email=>"admin@trackkr.com")
#User.create(:name=>"regular_user",:password=>"regular_user@123",:password_confirmation=>"regular_user@123",:email=>"regular_user@trackkr.com")


#tr_module_1 = TrackkrModule.create(:name=>"Sports & Fitness",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_1 = tr_module_1.t_categories.create(:name=>"Running",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_1.products.create(:name=>"Gymnastic & Yoga",:image_url =>File.new(RAILS_ROOT + "/public/images/Running.jpg") )

#tr_module_2 =TrackkrModule.create(:name=>"Finance",:image_url=>File.new(RAILS_ROOT + "/public/images/Finance.jpg"))
#t_cat_2 = tr_module_2.t_categories.create(:name=>"Running",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_2.products.create(:name=>"Gymnastic & Yoga",:image_url =>File.new(RAILS_ROOT + "/public/images/Running.jpg") )


UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-01-26", :actual_distance => 65, :actual_speed=> 96, :actual_time => 60, :actual_notes=> nil, :plan_distance => 78, :plan_speed => 96, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-01-27", :actual_distance => 30, :actual_speed=> 78, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-01-28", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 96, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-01-29", :actual_distance => 56, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 78, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-01-30", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-01", :actual_distance => 65, :actual_speed=> 85, :actual_time => 60, :actual_notes=> nil, :plan_distance => 45, :plan_speed => 85, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-02", :actual_distance => 30, :actual_speed=> 52, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-03", :actual_distance => 65, :actual_speed=> 74, :actual_time => 60, :actual_notes=> nil, :plan_distance => 41, :plan_speed => 45, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-04", :actual_distance => 30, :actual_speed=> 41, :actual_time => 60, :actual_notes=> nil, :plan_distance => 78, :plan_speed => 30, :plan_time => 45, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-05", :actual_distance => 23, :actual_speed=> 12, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 45, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-06", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 45, :plan_time => 47, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-07", :actual_distance => 23, :actual_speed=> 12, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 45, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-08", :actual_distance => 14, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 41, :plan_speed => 65, :plan_time => 45, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-09", :actual_distance => 30, :actual_speed=> 25, :actual_time => 45, :actual_notes=> nil, :plan_distance => 45, :plan_speed => 30, :plan_time => 45, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-10", :actual_distance => 80, :actual_speed=> 25, :actual_time => 45, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-11", :actual_distance => 30, :actual_speed=> 74, :actual_time => 45, :actual_notes=> nil, :plan_distance => 12, :plan_speed => 65, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-12", :actual_distance => 85, :actual_speed=> 25, :actual_time => 45, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-13", :actual_distance => 30, :actual_speed=> 25, :actual_time => 45, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-14", :actual_distance => 30, :actual_speed=> 65, :actual_time => 45, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 41, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-15", :actual_distance => 36, :actual_speed=> 25, :actual_time => 45, :actual_notes=> nil, :plan_distance => 52, :plan_speed => 12, :plan_time => 41, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-16", :actual_distance => 30, :actual_speed=> 56, :actual_time => 12, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 41, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-17", :actual_distance => 30, :actual_speed=> 25, :actual_time => 12, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 45, :plan_time => 14, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-18", :actual_distance => 30, :actual_speed=> 56, :actual_time => 12, :actual_notes=> nil, :plan_distance => 74, :plan_speed => 24, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-19", :actual_distance => 23, :actual_speed=> 25, :actual_time => 12, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 45, :plan_time => 41, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-20", :actual_distance => 30, :actual_speed=> 56, :actual_time => 12, :actual_notes=> nil, :plan_distance => 52, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-21", :actual_distance => 30, :actual_speed=> 25, :actual_time => 12, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 41, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-22", :actual_distance => 41, :actual_speed=> 23, :actual_time => 12, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 45, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-23", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-24", :actual_distance => 14, :actual_speed=> 23, :actual_time => 10, :actual_notes=> nil, :plan_distance => 45, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-25", :actual_distance => 30, :actual_speed=> 25, :actual_time => 10, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 12, :plan_time => 24, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-26", :actual_distance => 41, :actual_speed=> 25, :actual_time => 10, :actual_notes=> nil, :plan_distance => 96, :plan_speed => 30, :plan_time => 24, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-27", :actual_distance => 14, :actual_speed=> 10, :actual_time => 10, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-28", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 65, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-02-29", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-03-01", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 32, :plan_speed => 30, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-03-02", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 30, :plan_time => 24, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-03-03", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 23, :plan_speed => 30, :plan_time => 42, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-03-04", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 65, :plan_time => 45, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 77, :training_date =>"2012-03-05", :actual_distance => 30, :actual_speed=> 25, :actual_time => 60, :actual_notes=> nil, :plan_distance => 15, :plan_speed => 88, :plan_time => 82, :plan_notes => "test")

