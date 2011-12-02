class UserProductPlanGraphsController < ApplicationController
  # GET /user_product_plan_graphs
  # GET /user_product_plan_graphs.xml
  def index
    @user_product_plan_graphs = UserProductPlanGraph.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_product_plan_graphs }
    end
  end

  # GET /user_product_plan_graphs/1
  # GET /user_product_plan_graphs/1.xml
  def show
    @user_product_plan_graph = UserProductPlanGraph.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_product_plan_graph }
    end
  end

  # GET /user_product_plan_graphs/new
  # GET /user_product_plan_graphs/new.xml
  def new
    @user_product_plan_graph = UserProductPlanGraph.new
    @graphs = Graph.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_product_plan_graph }
    end
  end

  # GET /user_product_plan_graphs/1/edit
  def edit
    @user_product_plan_graph = UserProductPlanGraph.find(params[:id])
  end

  # POST /user_product_plan_graphs
  # POST /user_product_plan_graphs.xml
  def create
    @user_product_plan_graph = UserProductPlanGraph.new(params[:user_product_plan_graph])

    respond_to do |format|
      if @user_product_plan_graph.save
        format.html { redirect_to(@user_product_plan_graph, :notice => 'User product plan graph was successfully created.') }
        format.xml  { render :xml => @user_product_plan_graph, :status => :created, :location => @user_product_plan_graph }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_product_plan_graph.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_product_plan_graphs/1
  # PUT /user_product_plan_graphs/1.xml
  def update
    @user_product_plan_graph = UserProductPlanGraph.find(params[:id])

    respond_to do |format|
      if @user_product_plan_graph.update_attributes(params[:user_product_plan_graph])
        format.html { redirect_to(@user_product_plan_graph, :notice => 'User product plan graph was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_product_plan_graph.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_product_plan_graphs/1
  # DELETE /user_product_plan_graphs/1.xml
  def destroy
    @user_product_plan_graph = UserProductPlanGraph.find(params[:id])
    @user_product_plan_graph.destroy

    respond_to do |format|
      format.html { redirect_to(user_product_plan_graphs_url) }
      format.xml  { head :ok }
    end
  end
end
