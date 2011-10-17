class ProductsController < ApplicationController
  before_filter :authorize, :except => :index
  
  respond_to :html
  
  def index
    @products = t_category.products.search(params[:search])
  end
  
  def new
    @product = t_category.products.new
    
    respond_with [@product, t_category]
  end
  
  def create
    @product = t_category.products.new(params[:product])
    
    respond_with [@product, t_category] do |format|
      format.html {
      if @product.save
        flash[:notice] = 'The Product was successfully created'
        redirect_to(t_category_products_path())
      else
        render 'new'
      end
      }
    end
    
  end
  
  
    def edit
    @product = t_category.products.find(params[:id])
    
    respond_with [@product, t_category]
  end
  
  def update
    @product = t_category.products.find(params[:id])
    
    update_was_successful = @product.update_attributes(params[:product])
    
    respond_with [@product, t_category] do |format|
      format.html {
      if update_was_successful
        flash[:notice] = 'The Product was successfully updated'
        redirect_to(t_category_products_path())
      else
        render 'edit'
      end
      }
    end
    
  end
  
   def destroy
    product = t_category.products.find(params[:id])
    
    if product.destroy
      flash[:notice] = 'The role was destroyed'
    else
      flash[:alert] = 'The role could not be destroyed'
    end
    
    respond_with [product, t_category] do |format|
      format.html {redirect_to(t_category_products_path())}
    end
  end
  
  
  private
  def t_category
    @t_category ||= TCategory.find(params[:t_category_id])
  end
  
end