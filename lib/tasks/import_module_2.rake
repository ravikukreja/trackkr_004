trackkr_module_2 =TrackkrModule.create(:name=>"Other Trackkrs",:image_location=>"/images/other.jpg")
    t_categories_2_1 = trackkr_module_2.t_categories.create(:name=>"Reading",:image_location=>"/images/reading.jpg")
    t_categories_2_2 = trackkr_module_2.t_categories.create(:name=>"Movies",:image_location=>"/images/movies.jpg")
    product_2_1 = t_categories_2_1.products.create(:name=>"Fiction",:image_location =>"/images/reading.jpg")
    product_2_2 = t_categories_2_2.products.create(:name=>"Action",:image_location =>"/images/movies.jpg")
    ["Avid Reader", "New Reader"].each do|reader_plan|
      product_plan_2_1 = product_2_1.product_plans.create(:product_plan_name=>reader_plan)
    end
    ["Movie Buff"].each do|movie_plan|
      product_plan_2_2 = product_2_2.product_plans.create(:product_plan_name=>movie_plan)
    end