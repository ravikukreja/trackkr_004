class PlanValuesController < ApplicationController
  # GET /plan_values
  # GET /plan_values.xml
=begin
  def index
    @plan_values = PlanValue.find_all_by_product_plan_id(params[:product_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plan_values }
    end
  end
=end  
  def index
    
    if params[:user_product_plan_id] == nil
      @product_ids = ProductPlan.find_by_id(params[:product_plan_id]).product_id
      @product_plans = ProductPlan.find_all_by_product_id(@product_ids)
      @plan_values = PlanValue.find_all_by_product_plan_id(params[:product_plan_id])
      
    else
      session[:user_product_plan_id] = params[:user_product_plan_id] || current_user.user_product_plans.first.id
      session[:product_id] = UserProductPlan.find(session[:user_product_plan_id]).product_plan.product.id
      @plan_values = PlanValue.find_all_by_product_plan_id(params[:product_plan_id])
      session[:product_plan_name] = ProductPlan.find(session[:product_id]).product_plan_name
      @product_plans = ProductPlan.find_all_by_product_id(session[:product_id])
    end  
      t = (Time.now + 15.week).to_i
      @target_date = (Date.today + 15.week)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plan_values }
    end
  end

  # GET /plan_values/1
  # GET /plan_values/1.xml
  def show
    @plan_value = PlanValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plan_value }
    end
  end

  # GET /plan_values/new
  # GET /plan_values/new.xml
  def new
    @plan_value = PlanValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plan_value }
    end
  end

  # GET /plan_values/1/edit
  def edit
    @plan_value = PlanValue.find(params[:id])
  end

  # POST /plan_values
  # POST /plan_values.xml
  def create
    @plan_value = PlanValue.new(params[:plan_value])

    respond_to do |format|
      if @plan_value.save
        format.html { redirect_to(@plan_value, :notice => 'Plan value was successfully created.') }
        format.xml  { render :xml => @plan_value, :status => :created, :location => @plan_value }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @plan_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /plan_values/1
  # PUT /plan_values/1.xml
  def update
    @plan_value = PlanValue.find(params[:id])

    respond_to do |format|
      if @plan_value.update_attributes(params[:plan_value])
        format.html { redirect_to(@plan_value, :notice => 'Plan value was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plan_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_values/1
  # DELETE /plan_values/1.xml
  def destroy
    @plan_value = PlanValue.find(params[:id])
    @plan_value.destroy

    respond_to do |format|
      format.html { redirect_to(plan_values_url) }
      format.xml  { head :ok }
    end
  end
end
