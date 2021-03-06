namespace :import do
  task :user => :environment do
    User.create(:username=>"admin",:password=>"admin@123",:password_confirmation=>"admin@123",:email=>"admin@trackkr.com")
    User.create(:username=>"regular_user",:password=>"regular_user@123",:password_confirmation=>"regular_user@123",:email=>"regular_user@trackkr.com")
  end

##########################################################################################################

  task :t_modules => :environment do
    TrackkrModule.delete_all
    TCategory.delete_all
    Product.delete_all
    ProductPlan.delete_all
    tr_module_1 = TrackkrModule.create(:name=>"Sports & Fitness",:image_location=>"/images/Running.jpg")
    t_cat_1 = tr_module_1.t_categories.create(:name=>"Running",:image_location=>"/images/Running.jpg")
    product = t_cat_1.products.create(:name=>"Marathon",:image_location =>"/images/Running.jpg") 
    ["Marathon_Novice","Marathon_Intermediate","Marathon_Advance"].each do |plan|
      product_plan = product.product_plans.create(:product_plan_name=>plan)
    end
    
    
    tr_module_2 =TrackkrModule.create(:name=>"Module2",:image_location=>"/images/Adidas.gif")
    t_cat_2 = tr_module_2.t_categories.create(:name=>"Module2Category",:image_location=>"/images/Running.jpg")
    t_cat_2.products.create(:name=>"Product2",:image_location =>"/images/Running.jpg" )
    
    tr_module_2 =TrackkrModule.create(:name=>"Module3",:image_location=>"/images/WineCollection.jpg")
    t_cat_2 = tr_module_2.t_categories.create(:name=>"Module3Category",:image_location=>"/images/Running.jpg")
    t_cat_2.products.create(:name=>"Product3",:image_location =>"/images/Running.jpg") 
    
    tr_module_2 =TrackkrModule.create(:name=>"Module4",:image_location=>"/images/Marketing.jpg")
    t_cat_2 = tr_module_2.t_categories.create(:name=>"Module4Category",:image_location=>"/images/Running.jpg")
    t_cat_2.products.create(:name=>"Product4",:image_location =>"/images/Running.jpg") 
  end

############################################################################################## 
  
  task :plan_values => :environment do
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

  
  
end  
  
