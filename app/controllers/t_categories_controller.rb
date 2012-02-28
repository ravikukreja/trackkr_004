class TCategoriesController < ApplicationController
  before_filter :authorize, :except => :index
  
  respond_to :html  
  
  def index
    @t_categories = trackkr_module.t_categories.search(params[:search])
    
    respond_with [@t_categories, @trackkr_module]
  end
  
  def new
    @t_category = trackkr_module.t_categories.new
    
    respond_with [trackkr_module, @t_category]
    
  end
   
  def create
    @t_category = trackkr_module.t_categories.new(params[:t_category])
    
    respond_with [trackkr_module, @t_category] do |format|
      format.html {
      if @t_category.save
        flash[:notice] = 'The category was saved'
        redirect_to(trackkr_module_t_categories_path())
      else
        render 'new'
      end
      }
    end
  end
  
  def edit
    @t_category = trackkr_module.t_categories.find(params[:id])
    
    respond_with [trackkr_module, @t_category]
    
  end
   
  def update
    @t_category = trackkr_module.t_categories.find(params[:id])
    
    update_was_successful = @t_category.update_attributes(params[:t_category])
    
    respond_with [trackkr_module, @t_category] do |format|
      format.html {
      if update_was_successful
        flash[:notice] = 'The category was updated'
        redirect_to(trackkr_module_t_categories_path())
      else
        render 'edit'
      end
      }
    end
  end
  
  def destroy
    t_category = trackkr_module.t_categories.find(params[:id])
    if t_category.destroy
      flash[:notice] = 'The role was destroyed'
    else
      flash[:alert] = 'The role could not be destroyed'
    end
    
    respond_with [trackkr_module, t_category] do |format|
      format.html {redirect_to(trackkr_module_t_categories_path())}
    end
  end
  
  private
  def trackkr_module
    @trackkr_module ||= TrackkrModule.find(params[:trackkr_module_id])    
  end
end