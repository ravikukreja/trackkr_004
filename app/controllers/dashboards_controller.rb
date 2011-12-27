class DashboardsController < ApplicationController
 helper_method :check_if_record_exists
  before_filter :require_user
  # GET /dashboards
  # GET /dashboards.xml
  def index
    current_user
    @date = params[:month] ? Date.parse(params[:month].gsub('-', '/')) : Date.today
    @user_product_plans = current_user.user_product_plans.all
    #session[:product_plan_id] = params[:product_plan_id] || current_user.user_product_plans.first.product_plan_id
    session[:user_product_plan_id] = params[:user_product_plan_id] || current_user.user_product_plans.first.id
    session[:product_id] = UserProductPlan.find(session[:user_product_plan_id]).product_plan.product.id
    @user_product_plan_graphs = UserProductPlanGraph.find_all_by_user_product_plan_id(session[:user_product_plan_id])
    @user_product_plan_ids = current_user.user_product_plans
    @user_product_plan_datas = UserProductPlanData.by_days(14).unfilled_actual_data.find_all_by_user_product_plan_id(session[:user_product_plan_id])
    @user_product_plan_datas_actual_distance= @user_product_plan_datas.find(:actual_distance)
    @friendships = current_user.friendships.by_product(session[:product_id])
    
    # Active Friend Identification Functionalities & logic is here
    #accepted_users = Friendship.by_usr_or_frd(current_user.id).by_product(session[:product_id]).by_status("Accepted").select("friend_id,user_id")
    #pending_users = Friendship.by_usr_or_frd(current_user.id).by_product(session[:product_id]).by_status("Pending").select("friend_id,user_id")
    #rejected_users = Friendship.by_usr_or_frd(current_user.id).by_product(session[:product_id]).by_status("Rejected").select("friend_id,user_id")
    #accepted_users = Friendship.by_usr_or_frd(current_user.id).by_product(Product.first.id).by_status("Accepted").select("friend_id,user_id")
    #pending_users = Friendship.by_usr_or_frd(current_user.id).by_product(Product.first.id).by_status("Pending").select("friend_id,user_id")
    #rejected_users = Friendship.by_usr_or_frd(current_user.id).by_product(Product.first.id).by_status("Rejected").select("friend_id,user_id")
    #accepted_friend_ids = (accepted_users.collect(&:friend_id) + accepted_users.collect(&:user_id)).uniq
    respond_to do |format|
      if @user_product_plan.blank?
      format.html # index.html.erb
      format.xml  { render :xml => @dashboards }
      else
      format.html { redirect to 'public/Dashboard.html' }
        end
    end
  end

  # GET /dashboards/1
  # GET /dashboards/1.xml
  def show
    @dashboard = Dashboard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dashboard }
    end
  end

  # GET /dashboards/new
  # GET /dashboards/new.xml
  def new
    @dashboard = Dashboard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dashboard }
    end
  end

  # GET /dashboards/1/edit
  def edit
    @dashboard = Dashboard.find(params[:id])
  end

  # POST /dashboards
  # POST /dashboards.xml
  def create
    @dashboard = Dashboard.new(params[:dashboard])

    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to(@dashboard, :notice => 'Dashboard was successfully created.') }
        format.xml  { render :xml => @dashboard, :status => :created, :location => @dashboard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dashboard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dashboards/1
  # PUT /dashboards/1.xml
  def update
    @dashboard = Dashboard.find(params[:id])

    respond_to do |format|
      if @dashboard.update_attributes(params[:dashboard])
        format.html { redirect_to(@dashboard, :notice => 'Dashboard was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dashboard.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  # DELETE /dashboards/1
  # DELETE /dashboards/1.xml
  def destroy
    @dashboard = Dashboard.find(params[:id])
    @dashboard.destroy

    respond_to do |format|
      format.html { redirect_to(dashboards_url) }
      format.xml  { head :ok }
    end
  end
end
