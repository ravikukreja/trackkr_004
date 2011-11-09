class ApplicationController < ActionController::Base
  # application_controller.rb
helper_method :check_if_record_exists
helper_method :current_user
before_filter :store_location

private

def authorize
  unless current_user.username == 'admin'
    flash[:notice] = 'You need to be an Administrator to access this page'
    redirect_to root_url
    false
  end
end

def current_user_session
  return @current_user_session if defined?(@current_user_session)
  @current_user_session = UserSession.find
end

def current_user
  return @current_user if defined?(@current_user)
  @current_user = current_user_session && current_user_session.record
end

def require_user
      unless current_user
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to new_user_session_url 
        return false
      end
end

def require_no_user
  if current_user
    store_location
    flash[:notice] = "You must be logged out to access this page"
    redirect_to account_url
    return false
  end
end
    
def store_location
  session[:return_to] = request.url unless params[:controller] == "user_sessions" 
end
    
def redirect_back_or_default(default)
  redirect_to(session[:return_to] || default)
  session[:return_to] = nil
end
end
