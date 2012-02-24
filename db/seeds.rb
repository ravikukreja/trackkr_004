# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


User.create(:username=>"admin",:password=>"admin@123",:password_confirmation=>"admin@123",:email=>"admin@trackkr.com")
User.create(:username=>"regular_user",:password=>"regular_user@123",:password_confirmation=>"regular_user@123",:email=>"regular_user@trackkr.com")


#tr_module_1 = TrackkrModule.create(:name=>"Sports & Fitness",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_1 = tr_module_1.t_categories.create(:name=>"Running",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_1.products.create(:name=>"Gymnastic & Yoga",:image_url =>File.new(RAILS_ROOT + "/public/images/Running.jpg") )

#tr_module_2 =TrackkrModule.create(:name=>"Finance",:image_url=>File.new(RAILS_ROOT + "/public/images/Finance.jpg"))
#t_cat_2 = tr_module_2.t_categories.create(:name=>"Running",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_2.products.create(:name=>"Gymnastic & Yoga",:image_url =>File.new(RAILS_ROOT + "/public/images/Running.jpg") )




UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-16", :actual_distance => 3, :actual_speed=> 5, :actual_time => 1, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 3, :plan_time => 41, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-17", :actual_distance => 3, :actual_speed=> 2, :actual_time => 1, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 4, :plan_time => 14, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-18", :actual_distance => 3, :actual_speed=> 5, :actual_time => 1, :actual_notes=> nil, :plan_distance => 7, :plan_speed => 2, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-19", :actual_distance => 2, :actual_speed=> 2, :actual_time => 1, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 4, :plan_time => 41, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-20", :actual_distance => 3, :actual_speed=> 5, :actual_time => 1, :actual_notes=> nil, :plan_distance => 5, :plan_speed => 3, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-21", :actual_distance => 3, :actual_speed=> 2, :actual_time => 1, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 3, :plan_time => 41, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-22", :actual_distance => 4, :actual_speed=> 2, :actual_time => 1, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 4, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-23", :actual_distance => 3, :actual_speed=> 2, :actual_time => 6, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 3, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-24", :actual_distance => 1, :actual_speed=> 2, :actual_time => 1, :actual_notes=> nil, :plan_distance => 4, :plan_speed => 3, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-25", :actual_distance => 3, :actual_speed=> 2, :actual_time => 1, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 1, :plan_time => 24, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-26", :actual_distance => 4, :actual_speed=> 2, :actual_time => 1, :actual_notes=> nil, :plan_distance => 9, :plan_speed => 3, :plan_time => 24, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-27", :actual_distance => 1, :actual_speed=> 1, :actual_time => 1, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 3, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-02-29", :actual_distance => 3, :actual_speed=> 2, :actual_time => 6, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 3, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-03-01", :actual_distance => 3, :actual_speed=> 2, :actual_time => 6, :actual_notes=> nil, :plan_distance => 3, :plan_speed => 3, :plan_time => 50, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-03-02", :actual_distance => 3, :actual_speed=> 2, :actual_time => 6, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 3, :plan_time => 24, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-03-03", :actual_distance => 3, :actual_speed=> 2, :actual_time => 6, :actual_notes=> nil, :plan_distance => 2, :plan_speed => 3, :plan_time => 42, :plan_notes => "test")
UserProductPlanData.create(:user_product_plan_id => 91, :training_date =>"2012-03-04", :actual_distance => 3, :actual_speed=> 2, :actual_time => 6, :actual_notes=> nil, :plan_distance => 1, :plan_speed => 6, :plan_time => 45, :plan_notes => "test")

