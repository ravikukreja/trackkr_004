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
    @user_product_plan = UserProductPlan.find(session[:user_product_plan_id])
    @graphs = Graph.all
    @friendships = current_user.friendships.by_product(session[:product_id])
    @inverse_friendships = current_user.inverse_friendships.find_all_by_product_id_and_friend_id(session[:product_id], current_user)
    #new functionality by bittu#
    #start#
    #current_user
    #session[:user_product_plan_id] = params[:user_product_plan_id] || current_user.user_product_plans.first.id
    #session[:product_id] = UserProductPlan.find(session[:user_product_plan_id]).product_plan.product.id

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
    status = false
    UserProductPlanGraph.find_all_by_user_product_plan_id(params[:user_product_plan_id].to_i).each do |existing|
          existing.destroy
	      end
    params[:new].each do |key,value|
      if Graph.exists?(value[:graph_id])
        value.merge!(:user_product_plan_id=>params[:user_product_plan_id].to_i)
      #  if (exist_data = UserProductPlanGraph.find_by_user_product_plan_id_and_graph_id(params[:user_product_plan_id].to_i,value[:graph_id]))
       #   status = exist_data.update_attributes(value)
      #  else
          user_product_plan_graph = UserProductPlanGraph.new(value)
          status = user_product_plan_graph.save
      #  end
      end
    end
    
    
    respond_to do |format|
      if status
        format.html { redirect_to("/dashboards", :notice => 'User product plan graph was successfully created.') }
        format.xml  { render :xml => @user_product_plan_graph, :status => :created, :location => @user_product_plan_graph }
      else
        @user_product_plan_graph = UserProductPlanGraph.new
	        @user_product_plan = UserProductPlan.find params[:user_product_plan_id]
		        @graphs = Graph.all
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
