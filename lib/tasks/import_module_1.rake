namespace :import_module_1 do
  
  task :user => :environment do
    User.delete_all
    User.create(:username=>"admin",:password=>"admin",:password_confirmation=>"admin",:email=>"admin@trackkr.com")
    User.create(:username=>"user",:password=>"user",:password_confirmation=>"user",:email=>"user@trackkr.com")
    User.create(:username=>"trackkr1",:password=>"trackkr",:password_confirmation=>"trackkr",:email=>"trackkr1@trackkr.com")
    User.create(:username=>"trackkr2",:password=>"trackkr",:password_confirmation=>"trackkr",:email=>"trackkr2@trackkr.com")
  end  
##############################################################################################


task :t_modules => :environment do
    TrackkrModule.delete_all
    TCategory.delete_all
    Product.delete_all
    ProductPlan.delete_all
    trackkr_module_1 = TrackkrModule.create(:name=>"Sports & Fitness",:image_location=>"/images/Running.jpg")
    t_categories_1 = trackkr_module_1.t_categories.create(:name=>"Running",:image_location=>"/images/Running.jpg")
    t_categories_2 = trackkr_module_1.t_categories.create(:name=>"Cycling",:image_location=>"/images/other.jpg")
    product_1_1 = t_categories_1.products.create(:name=>"Marathon",:image_location =>"/images/Running.jpg") 
    product_1_2 = t_categories_1.products.create(:name=>"Half Marathon",:image_location =>"/images/reading.jpg")
    product_2_1 = t_categories_2.products.create(:name=>"100 KM",:image_location =>"/images/Running.jpg") 
    product_2_2 = t_categories_2.products.create(:name=>"50 KM",:image_location =>"/images/reading.jpg")
    
    ["Marathon_Novice","Marathon_Intermediate","Marathon_Advance"].each do |plan|
      product_1_1.product_plans.create(:product_plan_name=>plan)
    end 
    
    ["Half_Marathon_Novice","Half_Marathon_Intermediate","Half_Marathon_Advance"].each do |plan|
      product_1_2.product_plans.create(:product_plan_name=>plan)
    end 
    
    ["100_KM_Novice","100_KM_Intermediate","100_KM_Advance"].each do |plan|
      product_2_1.product_plans.create(:product_plan_name=>plan)
    end
    
     ["50_KM_Novice","50_KM_Intermediate","50_KM_Advance"].each do |plan|
      product_2_2.product_plans.create(:product_plan_name=>plan)
    end
    
    ["Distance_Graph_Running", "Speed_Graph_Running", "Time_Graph_Running"].each do |graph|
      graph = t_categories_1.graphs.create(:name => graph)
    end
    
    ["Distance_Graph_Cycling", "Speed_Graph_Cycling", "Time_Graph_Cycling"].each do |graph|
      graph = t_categories_2.graphs.create(:name => graph)
    end
    
    
end
############################################################################################## 
  
  task :plan_values => :environment do
    PlanValue.delete_all
    product_plan = ProductPlan.find_by_product_plan_name("Marathon_Novice")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 8, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  8,    
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  9,    
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      10,
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 6, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 14, 
        :speed           => 5,
        :time            => 145,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 5, 
        :speed           => 5,
        :time            => 45,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 6, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    51, 
        :distance        => 5, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    52, 
        :distance        => 5, 
        :speed           => 8,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    53, 
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    54, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    55, 
        :distance        => 14, 
        :speed           => 6,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    56, 
        :distance        => 7, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  57,   
        :distance        => 8, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    58, 
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    59, 
        :distance        => 11, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  60,   
        :distance        => 11, 
        :speed           => 6,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  61,   
        :distance        => 11, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    62, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    63, 
        :distance        => 9, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      64,
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      65,
        :distance        => 12, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      66,
        :distance        => 13, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      67,
        :distance        => 14, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    68, 
        :distance        => 15, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    69, 
        :distance        => 16, 
        :speed           => 7,
        :time            => 120,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    70, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    71, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    72, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    73, 
        :distance        => 10, 
        :speed           => 6,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      74,
        :distance        => 15, 
        :speed           => 5,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      75,
        :distance        => 15, 
        :speed           => 6,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      76,
        :distance        => 20, 
        :speed           => 7,
        :time            => 200,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      77,
        :distance        => 20, 
        :speed           => 4,
        :time            => 215,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    78, 
        :distance        => 22, 
        :speed           => 5,
        :time            => 195,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    79, 
        :distance        => 21, 
        :speed           => 5,
        :time            => 190,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    80, 
        :distance        => 21, 
        :speed           => 6,
        :time            => 180,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      81,
        :distance        => 21, 
        :speed           => 7,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      82,
        :distance        => 21, 
        :speed           => 5,
        :time            => 155,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      83,
        :distance        => 22, 
        :speed           => 4,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      84,
        :distance        => 22, 
        :speed           => 7,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      85,
        :distance        => 23, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      86,
        :distance        => 24, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      87,
        :distance        => 25, 
        :speed           => 5,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      88,
        :distance        => 26, 
        :speed           => 4,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      89,
        :distance        => 27, 
        :speed           => 6,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      90,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    91, 
        :distance        => 30, 
        :speed           => 5,
        :time            => 345,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      92,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      93,
        :distance        => 30, 
        :speed           => 5,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      94,
        :distance        => 31, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      95,
        :distance        => 32, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      96,
        :distance        => 34, 
        :speed           => 5,
        :time            => 395,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    97, 
        :distance        => 36, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      98,
        :distance        => 38, 
        :speed           => 5,
        :time            => 405,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      99,
        :distance        => 40, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      100,
        :distance        => 42, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>101,
        :distance        => 43, 
        :speed           => 5,
        :time            => 450,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      102,
        :distance        => 44, 
        :speed           => 5,
        :time            => 430,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      103,
        :distance        => 44, 
        :speed           => 5,
        :time            => 425,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      104,
        :distance        => 44, 
        :speed           => 5,
        :time            => 420,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      105,
        :distance        => 44, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
   end
  end  
  
#########################################################################################  
  
  task :plan_values_2 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("Marathon_Intermediate")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 8, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  8,    
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  9,    
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      10,
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 6, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 14, 
        :speed           => 5,
        :time            => 145,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 12, 
        :speed           => 4,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 6, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    51, 
        :distance        => 5, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    52, 
        :distance        => 5, 
        :speed           => 8,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    53, 
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    54, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    55, 
        :distance        => 14, 
        :speed           => 6,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    56, 
        :distance        => 7, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  57,   
        :distance        => 8, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    58, 
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    59, 
        :distance        => 11, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  60,   
        :distance        => 11, 
        :speed           => 6,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  61,   
        :distance        => 11, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    62, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    63, 
        :distance        => 9, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      64,
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      65,
        :distance        => 12, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      66,
        :distance        => 13, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      67,
        :distance        => 14, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    68, 
        :distance        => 15, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    69, 
        :distance        => 16, 
        :speed           => 7,
        :time            => 120,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    70, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    71, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    72, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    73, 
        :distance        => 10, 
        :speed           => 6,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      74,
        :distance        => 15, 
        :speed           => 5,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      75,
        :distance        => 15, 
        :speed           => 6,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      76,
        :distance        => 20, 
        :speed           => 7,
        :time            => 200,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      77,
        :distance        => 20, 
        :speed           => 4,
        :time            => 215,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    78, 
        :distance        => 22, 
        :speed           => 5,
        :time            => 195,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    79, 
        :distance        => 21, 
        :speed           => 5,
        :time            => 190,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    80, 
        :distance        => 21, 
        :speed           => 6,
        :time            => 180,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      81,
        :distance        => 21, 
        :speed           => 7,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      82,
        :distance        => 21, 
        :speed           => 5,
        :time            => 155,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      83,
        :distance        => 22, 
        :speed           => 4,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      84,
        :distance        => 22, 
        :speed           => 7,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      85,
        :distance        => 23, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      86,
        :distance        => 24, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      87,
        :distance        => 25, 
        :speed           => 5,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      88,
        :distance        => 26, 
        :speed           => 4,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      89,
        :distance        => 27, 
        :speed           => 6,
        :time            => 145,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      90,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    91, 
        :distance        => 30, 
        :speed           => 5,
        :time            => 345,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      92,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      93,
        :distance        => 30, 
        :speed           => 5,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      94,
        :distance        => 31, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      95,
        :distance        => 32, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      96,
        :distance        => 34, 
        :speed           => 5,
        :time            => 395,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    97, 
        :distance        => 36, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      98,
        :distance        => 38, 
        :speed           => 5,
        :time            => 405,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      99,
        :distance        => 40, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      100,
        :distance        => 42, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>101,
        :distance        => 43, 
        :speed           => 5,
        :time            => 450,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      102,
        :distance        => 44, 
        :speed           => 5,
        :time            => 430,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      103,
        :distance        => 44, 
        :speed           => 5,
        :time            => 425,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      104,
        :distance        => 44, 
        :speed           => 5,
        :time            => 420,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      105,
        :distance        => 44, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
   end
  end  

##############################################################################################

task :plan_values_3 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("Marathon_Advance")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 8, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  8,    
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  9,    
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      10,
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 14, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 40, 
        :speed           => 24,
        :time            => 55,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    51, 
        :distance        => 5, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    52, 
        :distance        => 5, 
        :speed           => 8,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    53, 
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    54, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    55, 
        :distance        => 14, 
        :speed           => 6,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    56, 
        :distance        => 7, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  57,   
        :distance        => 8, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    58, 
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    59, 
        :distance        => 11, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  60,   
        :distance        => 60, 
        :speed           => 34,
        :time            => 75,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  61,   
        :distance        => 11, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    62, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    63, 
        :distance        => 9, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      64,
        :distance        => 9, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      65,
        :distance        => 12, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      66,
        :distance        => 13, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      67,
        :distance        => 14, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    68, 
        :distance        => 15, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    69, 
        :distance        => 16, 
        :speed           => 7,
        :time            => 120,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    70, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    71, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    72, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    73, 
        :distance        => 10, 
        :speed           => 6,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      74,
        :distance        => 15, 
        :speed           => 5,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      75,
        :distance        => 15, 
        :speed           => 6,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      76,
        :distance        => 20, 
        :speed           => 7,
        :time            => 200,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      77,
        :distance        => 30, 
        :speed           => 14,
        :time            => 25,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    78, 
        :distance        => 22, 
        :speed           => 5,
        :time            => 195,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    79, 
        :distance        => 21, 
        :speed           => 5,
        :time            => 190,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    80, 
        :distance        => 21, 
        :speed           => 6,
        :time            => 180,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      81,
        :distance        => 21, 
        :speed           => 7,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      82,
        :distance        => 21, 
        :speed           => 5,
        :time            => 155,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      83,
        :distance        => 22, 
        :speed           => 4,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      84,
        :distance        => 22, 
        :speed           => 7,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      85,
        :distance        => 23, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      86,
        :distance        => 24, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      87,
        :distance        => 25, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      88,
        :distance        => 26, 
        :speed           => 4,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      89,
        :distance        => 27, 
        :speed           => 6,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      90,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    91, 
        :distance        => 30, 
        :speed           => 5,
        :time            => 345,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      92,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      93,
        :distance        => 30, 
        :speed           => 5,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      94,
        :distance        => 31, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      95,
        :distance        => 32, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      96,
        :distance        => 34, 
        :speed           => 5,
        :time            => 395,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    97, 
        :distance        => 36, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      98,
        :distance        => 38, 
        :speed           => 5,
        :time            => 405,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      99,
        :distance        => 40, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      100,
        :distance        => 42, 
        :speed           => 5,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>101,
        :distance        => 43, 
        :speed           => 5,
        :time            => 450,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      102,
        :distance        => 44, 
        :speed           => 5,
        :time            => 430,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      103,
        :distance        => 44, 
        :speed           => 5,
        :time            => 425,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      104,
        :distance        => 44, 
        :speed           => 5,
        :time            => 420,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      105,
        :distance        => 44, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
   end
  end  

#################################################################################

task :plan_values_6 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("Half_Marathon_Novice")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 8, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  8,    
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  9,    
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      10,
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 14, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 60, 
        :speed           => 40,
        :time            => 25,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    51, 
        :distance        => 5, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    52, 
        :distance        => 5, 
        :speed           => 8,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    53, 
        :distance        => 9, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    54, 
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    55, 
        :distance        => 14, 
        :speed           => 6,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    56, 
        :distance        => 7, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  57,   
        :distance        => 8, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    58, 
        :distance        => 9, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    59, 
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  60,   
        :distance        => 60, 
        :speed           => 34,
        :time            => 75,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  61,   
        :distance        => 11, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    62, 
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    63, 
        :distance        => 9, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      64,
        :distance        => 9, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      65,
        :distance        => 12, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      66,
        :distance        => 13, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      67,
        :distance        => 14, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    68, 
        :distance        => 15, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    69, 
        :distance        => 16, 
        :speed           => 7,
        :time            => 120,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    70, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    71, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    72, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    73, 
        :distance        => 10, 
        :speed           => 6,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      74,
        :distance        => 15, 
        :speed           => 5,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      75,
        :distance        => 15, 
        :speed           => 6,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      76,
        :distance        => 20, 
        :speed           => 7,
        :time            => 200,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      77,
        :distance        => 30, 
        :speed           => 14,
        :time            => 25,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    78, 
        :distance        => 22, 
        :speed           => 5,
        :time            => 195,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    79, 
        :distance        => 21, 
        :speed           => 5,
        :time            => 190,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    80, 
        :distance        => 21, 
        :speed           => 6,
        :time            => 180,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      81,
        :distance        => 21, 
        :speed           => 7,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      82,
        :distance        => 21, 
        :speed           => 5,
        :time            => 155,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      83,
        :distance        => 22, 
        :speed           => 4,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      84,
        :distance        => 22, 
        :speed           => 7,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      85,
        :distance        => 23, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      86,
        :distance        => 24, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      87,
        :distance        => 25, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      88,
        :distance        => 26, 
        :speed           => 4,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      89,
        :distance        => 27, 
        :speed           => 6,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      90,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    91, 
        :distance        => 30, 
        :speed           => 5,
        :time            => 345,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      92,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      93,
        :distance        => 30, 
        :speed           => 5,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      94,
        :distance        => 31, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      95,
        :distance        => 32, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      96,
        :distance        => 34, 
        :speed           => 5,
        :time            => 395,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    97, 
        :distance        => 36, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      98,
        :distance        => 38, 
        :speed           => 5,
        :time            => 405,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      99,
        :distance        => 40, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      100,
        :distance        => 42, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>101,
        :distance        => 43, 
        :speed           => 5,
        :time            => 450,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      102,
        :distance        => 44, 
        :speed           => 5,
        :time            => 430,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      103,
        :distance        => 44, 
        :speed           => 5,
        :time            => 425,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      104,
        :distance        => 44, 
        :speed           => 5,
        :time            => 420,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      105,
        :distance        => 44, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
   end
  end  

##################################################################################

task :plan_values_5 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("Half_Marathon_Intermediate")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 8, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  8,    
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  9,    
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      10,
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 14, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 42, 
        :speed           => 49,
        :time            => 15,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    51, 
        :distance        => 5, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    52, 
        :distance        => 5, 
        :speed           => 8,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    53, 
        :distance        => 9, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    54, 
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    55, 
        :distance        => 14, 
        :speed           => 6,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    56, 
        :distance        => 7, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  57,   
        :distance        => 8, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    58, 
        :distance        => 9, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    59, 
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  60,   
        :distance        => 60, 
        :speed           => 34,
        :time            => 75,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  61,   
        :distance        => 11, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    62, 
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    63, 
        :distance        => 9, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      64,
        :distance        => 9, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      65,
        :distance        => 12, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      66,
        :distance        => 13, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      67,
        :distance        => 14, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    68, 
        :distance        => 15, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    69, 
        :distance        => 16, 
        :speed           => 7,
        :time            => 120,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    70, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    71, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    72, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    73, 
        :distance        => 10, 
        :speed           => 6,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      74,
        :distance        => 15, 
        :speed           => 5,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      75,
        :distance        => 15, 
        :speed           => 6,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      76,
        :distance        => 20, 
        :speed           => 7,
        :time            => 200,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      77,
        :distance        => 30, 
        :speed           => 14,
        :time            => 25,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    78, 
        :distance        => 22, 
        :speed           => 5,
        :time            => 195,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    79, 
        :distance        => 21, 
        :speed           => 5,
        :time            => 190,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    80, 
        :distance        => 21, 
        :speed           => 6,
        :time            => 180,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      81,
        :distance        => 21, 
        :speed           => 7,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      82,
        :distance        => 21, 
        :speed           => 5,
        :time            => 155,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      83,
        :distance        => 22, 
        :speed           => 4,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      84,
        :distance        => 22, 
        :speed           => 7,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      85,
        :distance        => 23, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      86,
        :distance        => 24, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      87,
        :distance        => 25, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      88,
        :distance        => 26, 
        :speed           => 4,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      89,
        :distance        => 27, 
        :speed           => 6,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      90,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    91, 
        :distance        => 30, 
        :speed           => 5,
        :time            => 345,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      92,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      93,
        :distance        => 30, 
        :speed           => 5,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      94,
        :distance        => 31, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      95,
        :distance        => 32, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      96,
        :distance        => 34, 
        :speed           => 5,
        :time            => 395,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    97, 
        :distance        => 36, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      98,
        :distance        => 38, 
        :speed           => 5,
        :time            => 405,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      99,
        :distance        => 40, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      100,
        :distance        => 42, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>101,
        :distance        => 43, 
        :speed           => 5,
        :time            => 450,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      102,
        :distance        => 44, 
        :speed           => 5,
        :time            => 430,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      103,
        :distance        => 44, 
        :speed           => 5,
        :time            => 425,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      104,
        :distance        => 44, 
        :speed           => 5,
        :time            => 420,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      105,
        :distance        => 44, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
   end
  end  

#####################################################################################

task :plan_values_4 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("Half_Marathon_Advance")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 8, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  8,    
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  9,    
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      10,
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 59, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 55, 
        :speed           => 57,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 55, 
        :speed           => 99,
        :time            => 19,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 21, 
        :speed           => 77,
        :time            => 34,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 55, 
        :speed           => 90,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 22, 
        :speed           => 22,
        :time            => 21,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 14, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 55, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    51, 
        :distance        => 5, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    52, 
        :distance        => 5, 
        :speed           => 8,
        :time            => 87,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    53, 
        :distance        => 9, 
        :speed           => 19,
        :time            => 87,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    54, 
        :distance        => 10, 
        :speed           => 65,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    55, 
        :distance        => 14, 
        :speed           => 6,
        :time            => 63,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    56, 
        :distance        => 7, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  57,   
        :distance        => 8, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    58, 
        :distance        => 9, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    59, 
        :distance        => 11, 
        :speed           => 19,
        :time            => 74,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  60,   
        :distance        => 60, 
        :speed           => 32,
        :time            => 75,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  61,   
        :distance        => 11, 
        :speed           => 87,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    62, 
        :distance        => 52, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    63, 
        :distance        => 9, 
        :speed           => 7,
        :time            => 45,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      64,
        :distance        => 9, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      65,
        :distance        => 12, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      66,
        :distance        => 13, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      67,
        :distance        => 14, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    68, 
        :distance        => 15, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    69, 
        :distance        => 16, 
        :speed           => 7,
        :time            => 120,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    70, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    71, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    72, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 100,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    73, 
        :distance        => 10, 
        :speed           => 6,
        :time            => 130,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      74,
        :distance        => 15, 
        :speed           => 54,
        :time            => 20,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      75,
        :distance        => 96, 
        :speed           => 6,
        :time            => 52,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      76,
        :distance        => 20, 
        :speed           => 7,
        :time            => 200,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      77,
        :distance        => 30, 
        :speed           => 14,
        :time            => 25,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    78, 
        :distance        => 22, 
        :speed           => 5,
        :time            => 195,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    79, 
        :distance        => 21, 
        :speed           => 5,
        :time            => 190,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    80, 
        :distance        => 21, 
        :speed           => 6,
        :time            => 180,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      81,
        :distance        => 21, 
        :speed           => 7,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      82,
        :distance        => 21, 
        :speed           => 5,
        :time            => 155,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      83,
        :distance        => 22, 
        :speed           => 4,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      84,
        :distance        => 22, 
        :speed           => 7,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      85,
        :distance        => 23, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      86,
        :distance        => 24, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      87,
        :distance        => 25, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      88,
        :distance        => 26, 
        :speed           => 4,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      89,
        :distance        => 27, 
        :speed           => 6,
        :time            => 245,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      90,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    91, 
        :distance        => 30, 
        :speed           => 5,
        :time            => 345,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      92,
        :distance        => 30, 
        :speed           => 5,
        :time            => 135,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      93,
        :distance        => 30, 
        :speed           => 5,
        :time            => 165,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      94,
        :distance        => 31, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      95,
        :distance        => 32, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      96,
        :distance        => 34, 
        :speed           => 5,
        :time            => 395,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    97, 
        :distance        => 36, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      98,
        :distance        => 38, 
        :speed           => 5,
        :time            => 405,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      99,
        :distance        => 40, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      100,
        :distance        => 42, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>101,
        :distance        => 43, 
        :speed           => 5,
        :time            => 450,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      102,
        :distance        => 44, 
        :speed           => 5,
        :time            => 430,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      103,
        :distance        => 44, 
        :speed           => 5,
        :time            => 425,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      104,
        :distance        => 44, 
        :speed           => 5,
        :time            => 420,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      105,
        :distance        => 44, 
        :speed           => 5,
        :time            => 415,
        :notes           => "Doing good" 
    )
   end
  end  

######################################################################################

task :plan_values_7 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("100_KM_Advance")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 214,
        :speed           => 35,
        :time            => 85,       :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 200,
        :speed           => 35,
        :time            => 85 ,       :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 8, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  8,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  9,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 10,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 59, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 55, 
        :speed           => 57,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 55, 
        :speed           => 99,
        :time            => 19,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 21, 
        :speed           => 77,
        :time            => 34,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 55, 
        :speed           => 90,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 22, 
        :speed           => 22,
        :time            => 21,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 14, 
        :speed           => 5,
        :time            => 245,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
end    
end
####################################################################################
task :plan_values_8 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("100_KM_Intermediate")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 550,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 414,
        :speed           => 35,
        :time            => 85,       :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 200,
        :speed           => 35,
        :time            => 85 ,       :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 80, 
        :speed           => 89,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  8,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  9,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 10,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 59, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 55, 
        :speed           => 57,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 55, 
        :speed           => 99,
        :time            => 19,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 21, 
        :speed           => 77,
        :time            => 34,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 55, 
        :speed           => 90,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 22, 
        :speed           => 22,
        :time            => 21,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 254,
        :speed           => 65,
        :time            => 57,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 564,
        :speed           => 35,
        :time            => 52,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 141, 
        :speed           => 55,
        :time            => 25,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
end 
end



################################################################################

task :plan_values_10 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("50_KM_Novice")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 50,
        :speed           => 5,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 150,
        :speed           => 85,
        :time            => 35,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 414,
        :speed           => 35,
        :time            => 85,       :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 200,
        :speed           => 35,
        :time            => 85 ,       :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 80, 
        :speed           => 89,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  8,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  9,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 10,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 25,
        :speed           => 85,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 59, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 55, 
        :speed           => 57,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 55, 
        :speed           => 99,
        :time            => 19,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 78,
        :speed           => 96,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 21, 
        :speed           => 77,
        :time            => 34,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 33, 
        :speed           => 74,
        :time            => 63,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 22, 
        :speed           => 22,
        :time            => 21,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 254,
        :speed           => 65,
        :time            => 57,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 564,
        :speed           => 35,
        :time            => 52,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 141, 
        :speed           => 55,
        :time            => 25,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 96, 
        :speed           => 21,
        :time            => 11,        :notes           => "Doing good" 
    )
end 
end


##################################################################################

task :plan_values_9 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("100_KM_Novice")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 100,
        :speed           => 10,
        :time            => 10,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 414,
        :speed           => 35,
        :time            => 85,       :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 200,
        :speed           => 35,
        :time            => 85 ,       :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 80, 
        :speed           => 89,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  8,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  9,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 10,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 100,
        :speed           => 10,
        :time            => 10,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 110, 
        :speed           => 190,
        :time            => 140,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 59, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 55, 
        :speed           => 57,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 55, 
        :speed           => 99,
        :time            => 19,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 21, 
        :speed           => 77,
        :time            => 34,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 55, 
        :speed           => 90,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 22, 
        :speed           => 22,
        :time            => 21,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 254,
        :speed           => 65,
        :time            => 57,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 564,
        :speed           => 35,
        :time            => 52,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 141, 
        :speed           => 55,
        :time            => 25,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
end 
end
####################################################################################

task :plan_values_11 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("50_KM_Intermediate")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 550,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 414,
        :speed           => 35,
        :time            => 85,       :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 200,
        :speed           => 35,
        :time            => 85 ,       :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 80, 
        :speed           => 89,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  8,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  9,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 10,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 59, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 55, 
        :speed           => 57,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 55, 
        :speed           => 99,
        :time            => 19,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 21, 
        :speed           => 77,
        :time            => 34,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 55, 
        :speed           => 90,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 22, 
        :speed           => 22,
        :time            => 21,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 254,
        :speed           => 65,
        :time            => 57,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 564,
        :speed           => 35,
        :time            => 52,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 141, 
        :speed           => 55,
        :time            => 25,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
end 
end
###################################################################################

task :plan_values_12 => :environment do
    product_plan = ProductPlan.find_by_product_plan_name("50_KM_Advance")
    product_plan.plan_values.delete_all
    if product_plan
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 1,
        :distance        => 456,
        :speed           => 135,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 2,
        :distance        => 254,
        :speed           => 351,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 3,
        :distance        => 414,
        :speed           => 35,
        :time            => 85,       :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 4,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 5,
        :distance        => 200,
        :speed           => 35,
        :time            => 85 ,       :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 6,
        :distance        => 80, 
        :speed           => 89,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 7,
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  8,    
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             =>  9,    
        :distance        => 552,
        :speed           => 135,
        :time            => 185,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day             => 10,
        :distance        => 250,
        :speed           => 135,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 11,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 12,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,
        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 13,      
        :distance        => 10, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 14,      
        :distance        => 140,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 15,      
        :distance        => 196,
        :speed           => 135,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 16,      
        :distance        => 950,
        :speed           => 35,
        :time            => 85,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  17,   
        :distance        => 220, 
        :speed           => 134,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    18, 
        :distance        => 120,
        :speed           => 35,
        :time            => 12,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  19,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 20,      
        :distance        => 11, 
        :speed           => 19,
        :time            => 40,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 21,      
        :distance        => 59, 
        :speed           => 59,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  22,   
        :distance        => 55, 
        :speed           => 57,
        :time            => 19,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  23,   
        :distance        => 55, 
        :speed           => 99,
        :time            => 19,        :notes           => "CC" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  24,   
        :distance        => 50,
        :speed           => 35,
        :time            => 55,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  => 25,      
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  26,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  27,   
        :distance        => 13, 
        :speed           => 5,
        :time            => 90,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  28,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  29,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  30,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  31,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  32,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  33,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  34,   
        :distance        => 5, 
        :speed           => 11,
        :time            => 110,
        :notes           => "Doing good" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  35,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    36, 
        :distance        => 21, 
        :speed           => 77,
        :time            => 34,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    37, 
        :distance        => 55, 
        :speed           => 90,
        :time            => 19,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    38, 
        :distance        => 22, 
        :speed           => 22,
        :time            => 21,        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    39, 
        :distance        => 254,
        :speed           => 65,
        :time            => 57,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    40, 
        :distance        => 564,
        :speed           => 35,
        :time            => 52,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    41, 
        :distance        => 141, 
        :speed           => 55,
        :time            => 25,
        :notes           => "Stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  42,   
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    43, 
        :distance        => 150,
        :speed           => 35,
        :time            => 85,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    44, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CE" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    45, 
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Stretching and Strides" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  46,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "Warm-up" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>  47,   
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    48, 
        :distance        => 10, 
        :speed           => 5,
        :time            => 125,
        :notes           => "stretching" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>      49,
        :distance        => 60, 
        :speed           => 49,
        :time            => 20,        :notes           => "CT" 
    )
    PlanValue.create(:product_plan_id => product_plan.id,
        :day  =>    50, 
        :distance        => 50, 
        :speed           => 34,
        :time            => 65,        :notes           => "Doing good" 
    )
end 
end
#################################################################################
end



