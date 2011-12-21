 class UserProductPlanDatasController < ApplicationController
  # GET /user_product_plan_datas
  # GET /user_product_plan_datas.xml
  layout "blank"
  
  def index
   # @user_product_plan_datas = UserProductPlanData.all
    @date = params[:month] ? Date.parse(params[:month].gsub('-', '/')) : Date.today
    session[:product_plan_id] = params[:product_plan_id] || current_user.user_product_plans.first.product_plan_id
    @user_product_plan_id = current_user.user_product_plans.find_by_product_plan_id(session[:product_plan_id])
    @user_product_plan_datas = UserProductPlanData.find_all_by_user_product_plan_id(params[:user_product_plan_id])
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_product_plan_datas }
    end
  end

  # GET /user_product_plan_datas/1
  # GET /user_product_plan_datas/1.xml
  def show
    @user_product_plan_data = UserProductPlanData.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_product_plan_data }
    end
  end

  # GET /user_product_plan_datas/new
  # GET /user_product_plan_datas/new.xml
  def new
    @user_product_plan_data = current_user.user_product_plan_datas(session[:product_plan_id],params[:date])
    @user_product_plan_data ||= UserProductPlanData.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_product_plan_data }
    end
  end

#   GET /user_product_plan_datas/1/edit
  def edit
    @user_product_plan_data = UserProductPlanData.find(params[:id])
  end

  # POST /user_product_plan_datas
  # POST /user_product_plan_datas.xml
  def create
    @user_product_plan_data = UserProductPlanData.new(params[:user_product_plan_data])

    respond_to do |format|
      if @user_product_plan_data.save
        #format.html { redirect_to(@user_product_plan_data, :notice => 'User product plan data was successfully created.') }
        format.html { redirect_to(@dashboards, :notice => 'User product plan data was successfully created.') }
        #format.xml  { render :xml => @user_product_plan_data, :status => :created, :location => @user_product_plan_data }
        format.xml  { render :xml => @dashboards, :status => :created, :location => @user_product_plan_data }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_product_plan_data.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_product_plan_datas/1
  # PUT /user_product_plan_datas/1.xml
  def update
    @user_product_plan_data = UserProductPlanData.find(params[:id])

    respond_to do |format|
      if @user_product_plan_data.update_attributes(params[:user_product_plan_data])
        format.html { redirect_to(@user_product_plan_data, :notice => 'User product plan data was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_product_plan_data.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_product_plan_datas/1
  # DELETE /user_product_plan_datas/1.xml
  def destroy
    @user_product_plan_data = UserProductPlanData.find(params[:id])
    @user_product_plan_data.destroy

    respond_to do |format|
      format.html { redirect_to(user_product_plan_datas_url) }
      format.xml  { head :ok }
    end
  end
  
  
  def update_individual
    UserProductPlanData.update(params[:plan_datas].keys, params[:plan_datas].values)
    flash[:notice] = "Plan Data Updated"
    redirect_to dashboards_path
  end
  
end
