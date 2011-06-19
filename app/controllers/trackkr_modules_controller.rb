class TrackkrModulesController < ApplicationController
  before_filter :authorize, :except => :index
  # GET /trackkr_modules
  # GET /trackkr_modules.xml
  respond_to :html
  
  def index
    @trackkr_modules = TrackkrModule.all

    respond_with [@trackkr_modules]
  end

  # GET /trackkr_modules/1
  # GET /trackkr_modules/1.xml
  def show
    @trackkr_module = TrackkrModule.find(params[:id])

    respond_with [@trackkr_module]
  end

  # GET /trackkr_modules/new
  # GET /trackkr_modules/new.xml
  def new
    @trackkr_module = TrackkrModule.new

    respond_with [@trackkr_module]
  end

  # GET /trackkr_modules/1/edit
  def edit
    @trackkr_module = TrackkrModule.find(params[:id])
  end

  # POST /trackkr_modules
  # POST /trackkr_modules.xml
  def create
    @trackkr_module = TrackkrModule.new(params[:trackkr_module])
    
    if @trackkr_module.save
      flash[:notice] = 'The Module was successfully created'
    end

    respond_with [@trackkr_module]
  end

  # PUT /trackkr_modules/1
  # PUT /trackkr_modules/1.xml
  def update
    @trackkr_module = TrackkrModule.find(params[:id])
    
    if @trackkr_module.update_attributes(params[:trackkr_module])
      flash[:notice] = 'Module was successfully updated'
    else
      notice[:alert] = 'Module was not updated'
      render 'edit'
    end

    respond_with [@trackkr_module]
  end

  # DELETE /trackkr_modules/1
  # DELETE /trackkr_modules/1.xml
  def destroy
    @trackkr_module = TrackkrModule.find(params[:id])
    @trackkr_module.destroy

    respond_to do |format|
      format.html { redirect_to(trackkr_modules_url) }
      format.xml  { head :ok }
    end
  end
end
