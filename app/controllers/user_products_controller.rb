class UserProductsController < ApplicationController
  before_filter :require_user
  # GET /user_products
  # GET /user_products.xml
  def index
    @user_products = UserProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_products }
    end
  end

  # GET /user_products/1
  # GET /user_products/1.xml
  def show
    @user_product = UserProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_product }
    end
  end

  # GET /user_products/new
  # GET /user_products/new.xml
  def new
    @user_product = UserProduct.new
    @trackkr_modules = TrackkrModule.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_product }
    end
  end

  # GET /user_products/1/edit
  def edit
    @user_product = UserProduct.find(params[:id])
  end

  # POST /user_products
  # POST /user_products.xml
  def create
    current_user
    product = Product.find(params[:product_ids] || params[:product_id])
    @user_product = current_user.user_products.build(:product => product)

    respond_to do |format|
      if @user_product.save
        format.html { redirect_to(dashboards_path, :notice => 'User product was successfully created.') }
        format.xml  { render :xml => @user_product, :status => :created, :location => @user_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_products/1
  # PUT /user_products/1.xml
  def update
    @user_product = UserProduct.find(params[:id])

    respond_to do |format|
      if @user_product.update_attributes(params[:user_product])
        format.html { redirect_to(@user_product, :notice => 'User product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_products/1
  # DELETE /user_products/1.xml
  def destroy
    @user_product = UserProduct.find(params[:id])
    @user_product.destroy

    respond_to do |format|
      format.html { redirect_to(user_products_url) }
      format.xml  { head :ok }
    end
  end
end
