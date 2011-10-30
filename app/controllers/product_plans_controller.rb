class ProductPlansController < ApplicationController
  # GET /product_plans
  # GET /product_plans.xml
  def index
    @product_plans = ProductPlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_plans }
    end
  end

  # GET /product_plans/1
  # GET /product_plans/1.xml
  def show
    @product_plan = ProductPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_plan }
    end
  end

  # GET /product_plans/new
  # GET /product_plans/new.xml
  def new
    @product_plan = ProductPlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_plan }
    end
  end

  # GET /product_plans/1/edit
  def edit
    @product_plan = ProductPlan.find(params[:id])
  end

  # POST /product_plans
  # POST /product_plans.xml
  def create
    @product_plan = ProductPlan.new(params[:product_plan])

    respond_to do |format|
      if @product_plan.save
        format.html { redirect_to(@product_plan, :notice => 'Product plan was successfully created.') }
        format.xml  { render :xml => @product_plan, :status => :created, :location => @product_plan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_plans/1
  # PUT /product_plans/1.xml
  def update
    @product_plan = ProductPlan.find(params[:id])

    respond_to do |format|
      if @product_plan.update_attributes(params[:product_plan])
        format.html { redirect_to(@product_plan, :notice => 'Product plan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_plans/1
  # DELETE /product_plans/1.xml
  def destroy
    @product_plan = ProductPlan.find(params[:id])
    @product_plan.destroy

    respond_to do |format|
      format.html { redirect_to(product_plans_url) }
      format.xml  { head :ok }
    end
  end
end
