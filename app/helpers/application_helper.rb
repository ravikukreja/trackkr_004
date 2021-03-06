module ApplicationHelper
  def input_plan_data_into_user_table
     return true
  end
  
  def user_product_plan_datas_row(user_product_plan_id,date)
    UserProductPlanData.find_by_user_product_plan_id_and_training_date(user_product_plan_id,date)
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
  
  
  def big_id_2(data)
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
  
  def avatar_url(user)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    "http://www.gravatar.com/avatar/#{gravatar_id}?s=30"
  end
  
  def current_avatar_url(current_user)
    gravatar_id = Digest::MD5.hexdigest(current_user.email.downcase)
    "http://www.gravatar.com/avatar/#{gravatar_id}?s=40"
  end
  
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction} , {:class => css_class }
  end
  
end
