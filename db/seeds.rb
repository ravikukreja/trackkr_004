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


PlanValue.create(:product_plan_id=>3, :day=>1, :distance=>10, :speed=>10,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>2, :distance=>10, :speed=>10,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>3, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>4, :distance=>10, :speed=>10,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>5, :distance=>10, :speed=>10,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>6, :distance=>10, :speed=>10,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>7, :distance=>10, :speed=>10,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>8, :distance=>14, :speed=>14,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>9, :distance=>14, :speed=>14,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>10, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>11, :distance=>14, :speed=>14,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>12, :distance=>14, :speed=>14,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>13, :distance=>14, :speed=>14,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>14, :distance=>14, :speed=>14,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>15, :distance=>18, :speed=>18,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>16, :distance=>18, :speed=>18,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>17, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>18, :distance=>18, :speed=>18,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>19, :distance=>18, :speed=>18,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>20, :distance=>18, :speed=>18,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>21, :distance=>18, :speed=>18,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>22, :distance=>23, :speed=>23,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>23, :distance=>23, :speed=>23,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>24, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>25, :distance=>23, :speed=>23,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>26, :distance=>23, :speed=>23,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>27, :distance=>23, :speed=>23,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>28, :distance=>23, :speed=>23,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

#Month 2

PlanValue.create(:product_plan_id=>3, :day=>29, :distance=>30, :speed=>30,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>30, :distance=>30, :speed=>30,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>31, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>32, :distance=>30, :speed=>30,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>33, :distance=>30, :speed=>30,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>34, :distance=>30, :speed=>30,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>35, :distance=>30, :speed=>30,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>36, :distance=>35, :speed=>35,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>37, :distance=>35, :speed=>35,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>38, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>39, :distance=>35, :speed=>35,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>40, :distance=>35, :speed=>35,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>41, :distance=>35, :speed=>35,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>42, :distance=>35, :speed=>35,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>43, :distance=>40, :speed=>40,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>44, :distance=>40, :speed=>40,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>45, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>46, :distance=>40, :speed=>40,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>47, :distance=>40, :speed=>40,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>48, :distance=>40, :speed=>40,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>49, :distance=>40, :speed=>40,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>50, :distance=>42, :speed=>42,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>51, :distance=>42, :speed=>42,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>52, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>53, :distance=>42, :speed=>42,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>54, :distance=>42, :speed=>42,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>55, :distance=>42, :speed=>42,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>56, :distance=>42, :speed=>42,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>57, :distance=>45, :speed=>45,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>58, :distance=>45, :speed=>45,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>59, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>60, :distance=>45, :speed=>45,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>61, :distance=>45, :speed=>45,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>62, :distance=>45, :speed=>45,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>63, :distance=>45, :speed=>45,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>64, :distance=>48, :speed=>48,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>65, :distance=>48, :speed=>48,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>66, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>67, :distance=>48, :speed=>48,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>68, :distance=>48, :speed=>48,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>69, :distance=>48, :speed=>48,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>70, :distance=>48, :speed=>48,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>71, :distance=>54, :speed=>54,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>72, :distance=>54, :speed=>54,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>73, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>74, :distance=>54, :speed=>54,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>75, :distance=>54, :speed=>54,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>76, :distance=>54, :speed=>54,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>77, :distance=>54, :speed=>54,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>78, :distance=>58, :speed=>58,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>79, :distance=>58, :speed=>58,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>80, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>81, :distance=>58, :speed=>58,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>82, :distance=>58, :speed=>58,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>83, :distance=>58, :speed=>58,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>84, :distance=>58, :speed=>58,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")



PlanValue.create(:product_plan_id=>3, :day=>85, :distance=>63, :speed=>63,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>86, :distance=>63, :speed=>63,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>87, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>88, :distance=>63, :speed=>63,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>89, :distance=>63, :speed=>63,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>90, :distance=>63, :speed=>63,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>91, :distance=>63, :speed=>63,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>92, :distance=>65, :speed=>85,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>93, :distance=>65, :speed=>85,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>94, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>95, :distance=>65, :speed=>85,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>96, :distance=>65, :speed=>85,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>97, :distance=>65, :speed=>85,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>98, :distance=>65, :speed=>85,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>99, :distance=>68, :speed=>68,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>100, :distance=>68, :speed=>68,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>101, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>102, :distance=>68, :speed=>68,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>103, :distance=>68, :speed=>68,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>104, :distance=>68, :speed=>68,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>105, :distance=>68, :speed=>68,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>106, :distance=>71, :speed=>71,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>107, :distance=>71, :speed=>71,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>108, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>109, :distance=>71, :speed=>71,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>110, :distance=>71, :speed=>71,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>111, :distance=>71, :speed=>71,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>112, :distance=>71, :speed=>71,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>113, :distance=>73, :speed=>73,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>114, :distance=>73, :speed=>73,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>115, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>116, :distance=>73, :speed=>73,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>117, :distance=>73, :speed=>73,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>118, :distance=>73, :speed=>73,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>119, :distance=>73, :speed=>73,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>120, :distance=>77, :speed=>77,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>121, :distance=>77, :speed=>77,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>122, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>123, :distance=>77, :speed=>77,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>124, :distance=>77, :speed=>77,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>125, :distance=>77, :speed=>77,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>126, :distance=>77, :speed=>77,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>127, :distance=>80, :speed=>80,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>128, :distance=>80, :speed=>80,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>129, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>130, :distance=>80, :speed=>80,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>131, :distance=>80, :speed=>80,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>132, :distance=>80, :speed=>80,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>133, :distance=>80, :speed=>80,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>134, :distance=>83, :speed=>83,:time=>60, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>135, :distance=>83, :speed=>83,:time=>60, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>136, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>137, :distance=>83, :speed=>83,:time=>60, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>138, :distance=>83, :speed=>83,:time=>60, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>139, :distance=>83, :speed=>83,:time=>60, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>140, :distance=>83, :speed=>83,:time=>60, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>141, :distance=>85, :speed=>85,:time=>70, :notes =>"1-2 hour ride with 30 minutes of hard effort")
PlanValue.create(:product_plan_id=>3, :day=>142, :distance=>85, :speed=>85,:time=>70, :notes =>"1-2 hour ride at steady pace (65% MHR)")
PlanValue.create(:product_plan_id=>3, :day=>143, :distance=>0, :speed=>0,:time=>0, :notes =>"Rest")
PlanValue.create(:product_plan_id=>3, :day=>144, :distance=>85, :speed=>85,:time=>70, :notes =>"1-1.5 hour ride with hills")
PlanValue.create(:product_plan_id=>3, :day=>145, :distance=>85, :speed=>85,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>146, :distance=>85, :speed=>85,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>147, :distance=>85, :speed=>85,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")

PlanValue.create(:product_plan_id=>3, :day=>148, :distance=>88, :speed=>85,:time=>70, :notes =>"Rest or 1-hour easy recovery ride")
PlanValue.create(:product_plan_id=>3, :day=>149, :distance=>88, :speed=>85,:time=>70, :notes =>"1-1.5 hours with interval training")
PlanValue.create(:product_plan_id=>3, :day=>150, :distance=>88, :speed=>85,:time=>70, :notes =>"Rest or 30-minute easy recovery ride")
