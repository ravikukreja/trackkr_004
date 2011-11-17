class UserProductPlansController < ApplicationController
  before_filter :require_user
  # GET /user_product_plans
  # GET /user_product_plans.xml
  def index
    @user_product_plans = UserProductPlan.all

    respond_to do |format|
      format.html # index.html.erb
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
    @user_product_plan = UserProductPlan.new
    @trackkr_modules = TrackkrModule.all

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
    current_user
    #@plan_values = PlanValue.find_by_product_plan_id(params[:product_plan_id])
    product = Product.find(params[:product_ids] || params[:user_product_plan][:product_id])
    @user_product_plan = current_user.user_product_plans.new(params[:user_product_plan])
    date = "#{params['plan']['date(1i)']}/#{params['plan']['date(2i)']}/#{params['plan']['date(3i)']}"
    if params[:start_end] == "start"
      @user_product_plan.start_date = date
    elsif params[:start_end] == "end"
      @user_product_plan.end_date = date
    end
    if params[:friend_id]
      @frd = Friend.find(params[:friend_id])
      @frd.status = "Approved"
      @frd.save
    end
    respond_to do |format|
      if @user_product_plan.save
        format.html { redirect_to(dashboards_path, :notice => 'User product plan was successfully created.') }
        format.xml  { render :xml => @user_product_plan, :status => :created, :location => @user_product_plan }
      else
        format.html { render :action => "new" }
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
        format.html { redirect_to(@user_product_plan, :notice => 'User product plan was successfully updated.') }
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

    respond_to do |format|
      format.html { redirect_to(user_product_plans_url) }
      format.xml  { head :ok }
    end
  end
end
