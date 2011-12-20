module ApplicationHelper
  def input_plan_data_into_user_table
     return true
  end
  
  def get_color(data)
    if data and data.actual_distance and data.plan_distance
      "red"
    elsif data and data.actual_distance
      "red"
    elsif data and data.plan_distance
      "green"
    else
      "white"
    end
  end
end
