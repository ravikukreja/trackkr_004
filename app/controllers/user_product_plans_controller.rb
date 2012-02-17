class UserProductPlansController < ApplicationController
  before_filter :require_user
  helper_method :sort_direction, :sort_column
  # GET /user_product_plans
  # GET /user_product_plans.xml
  def index
    @user_product_plans = UserProductPlan.order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.js
      format.xml  { render :xml => @user_product_plans }
    end
  end

  # GET /user_product_plans/1
  # GET /user_product_plans/1.xml
  def show
    @user_product_plan = UserProductPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_product_plan }
    end
  end

  # GET /user_product_plans/new
  # GET /user_product_plans/new.xml
  def new
    @existing_user_product_plan = current_user.user_product_plans.find_by_product_id(params[:product_id])
    @user_product_plan = UserProductPlan.new
    @trackkr_modules = TrackkrModule.all
    session[:product_id] = params[:product_id]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_product_plan }
    end
  end

  # GET /user_product_plans/1/edit
  def edit
    @user_product_plan = UserProductPlan.find(params[:id])
  end
 

  # POST /user_product_plans
  # POST /user_product_plans.xml
  def create
    @existing_user_product_plan = current_user.user_product_plans.find_by_product_id(params[:product_id])
    #@plan_values = PlanValue.find_by_product_plan_id(params[:product_plan_id])
    @user_product_plan = current_user.user_product_plans.new(params[:user_product_plan])
    date = "#{params['plan']['date(1i)']}/#{params['plan']['date(2i)']}/#{params['plan']['date(3i)']}"
    if params[:start_end] == "start"
      @user_product_plan.start_date = date
      t = date.to_i + 1350000000
      @user_product_plan.end_date = Time.at(t)
    elsif params[:start_end] == "end"
      @user_product_plan.end_date = date
      @user_product_plan.start_date = 2.month.ago
    end
    
    if @user_product_plan.save
      plan_days = @user_product_plan.product_plan.plan_values
      status = false
      plan_days.each do |plan_day|
        user_product_plan_data = @user_product_plan.user_product_plan_datas.new
        user_product_plan_data.training_date = @user_product_plan.start_date.nil? ? (@user_product_plan.end_date - plan_day.day.days) : (@user_product_plan.start_date + plan_day.day.days)
        user_product_plan_data.plan_distance = plan_day.distance
        user_product_plan_data.plan_speed = plan_day.speed
        user_product_plan_data.plan_time = plan_day.distance
        user_product_plan_data.plan_notes = plan_day.notes
        status = user_product_plan_data.save
      end  
    end
    if params[:friend_id]
      @frd = Friend.find(params[:friend_id])
      @frd.status = "Approved"
      @frd.save
    end
    respond_to do |format|
      if status
        format.html { redirect_to(dashboards_path, :notice => 'User product plan was successfully created.') }
        format.xml  { render :xml => @user_product_plan, :status => :created, :location => @user_product_plan }
      else
        format.html { redirect_to(add_new_user_product_plan_path(:product_id => session[:product_id]), :notice => 'This product already exists') }
        format.xml  { render :xml => @user_product_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_product_plans/1
  # PUT /user_product_plans/1.xml
  def update
    @user_product_plan = UserProductPlan.find(params[:id])

    respond_to do |format|
      if @user_product_plan.update_attributes(params[:user_product_plan])
        format.html { redirect_to(user_product_plan_datas_path, :notice => 'User product plan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_product_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_product_plans/1
  # DELETE /user_product_plans/1.xml
  def destroy
    @user_product_plan = UserProductPlan.find(params[:id])
    @user_product_plan.destroy
    @any_plans_left = current_user.user_product_plans

    respond_to do |format|
      unless @any_plans_left.blank?
        format.html { redirect_to(dashboards_url) }
        format.xml  { head :ok }
      else
        format.html {redirect_to(trackkr_modules_path)}
    end
  end
end

 private

  def sort_column
    params[:sort] || "id"
    #UserProductPlan.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end
  
  def sort_direction
    params[:direction] || "asc"
    #%w["asc","desc"].include?(params[:sort_direction]) ? params[:sort_direction] :"asc"
  end
end
