class UserSessionsController < ApplicationController
  layout 'blank'
  
  def new
    @user_session = UserSession.new
  end
 
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    cookies.delete(:auth_token)
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
end


