class UserProductActualDatasController < ApplicationController
  # GET /user_product_actual_datas
  # GET /user_product_actual_datas.xml
  def index
    @user_product_actual_datas = UserProductActualData.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_product_actual_datas }
    end
  end

  # GET /user_product_actual_datas/1
  # GET /user_product_actual_datas/1.xml
  def show
    @user_product_actual_data = UserProductActualData.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_product_actual_data }
    end
  end

  # GET /user_product_actual_datas/new
  # GET /user_product_actual_datas/new.xml
  def new
    @user_product_actual_data = current_user.user_product_actual_datas(session[:product_id],params[:date])
    @user_product_actual_data ||= UserProductActualData.new

    respond_to do |format|
      format.html{ render :layout=>nil}
      format.xml  { render :xml => @user_product_actual_data }
    end
  end

#   GET /user_product_actual_datas/1/edit
  def edit
    @user_product_actual_data = UserProductActualData.find(params[:id])
  end

  # POST /user_product_actual_datas
  # POST /user_product_actual_datas.xml
  def create
    @user_product_actual_data = UserProductActualData.new(params[:user_product_actual_data])

    respond_to do |format|
      if @user_product_actual_data.save
        format.html { redirect_to(@user_product_actual_data, :notice => 'User product actual data was successfully created.') }
        format.xml  { render :xml => @user_product_actual_data, :status => :created, :location => @user_product_actual_data }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_product_actual_data.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_product_actual_datas/1
  # PUT /user_product_actual_datas/1.xml
  def update
    @user_product_actual_data = UserProductActualData.find(params[:id])

    respond_to do |format|
      if @user_product_actual_data.update_attributes(params[:user_product_actual_data])
        format.html { redirect_to(@user_product_actual_data, :notice => 'User product actual data was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_product_actual_data.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_product_actual_datas/1
  # DELETE /user_product_actual_datas/1.xml
  def destroy
    @user_product_actual_data = UserProductActualData.find(params[:id])
    @user_product_actual_data.destroy

    respond_to do |format|
      format.html { redirect_to(user_product_actual_datas_url) }
      format.xml  { head :ok }
    end
  end
  
  
  def update_individual
    UserProductActualData.update(params[:actual_datas].keys, params[:actual_datas].values)
    flash[:notice] = "Actual Data Updated"
    redirect_to dashboards_path
  end
  
end
