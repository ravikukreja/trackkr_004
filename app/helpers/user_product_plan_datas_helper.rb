module UserProductPlanDatasHelper
  
  def new_or_edit_path(training_date)
     check_if_record_exists ? edit_user_product_plan_data_path(2) : new_user_product_plan_data_path
  end 
  
end
