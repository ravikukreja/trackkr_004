class TrackkrhomesController < ApplicationController
  # GET /trackkrhomes
  # GET /trackkrhomes.xml
  def index
    @trackkrhomes = Trackkrhome.all
    @trackkr_modules = TrackkrModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trackkrhomes }
    end
  end

  # GET /trackkrhomes/1
  # GET /trackkrhomes/1.xml
  def show
    @trackkrhome = Trackkrhome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trackkrhome }
    end
  end

  # GET /trackkrhomes/new
  # GET /trackkrhomes/new.xml
  def new
    @trackkrhome = Trackkrhome.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trackkrhome }
    end
  end

  # GET /trackkrhomes/1/edit
  def edit
    @trackkrhome = Trackkrhome.find(params[:id])
  end

  # POST /trackkrhomes
  # POST /trackkrhomes.xml
  def create
    @trackkrhome = Trackkrhome.new(params[:trackkrhome])

    respond_to do |format|
      if @trackkrhome.save
        format.html { redirect_to(@trackkrhome, :notice => 'Trackkrhome was successfully created.') }
        format.xml  { render :xml => @trackkrhome, :status => :created, :location => @trackkrhome }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trackkrhome.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trackkrhomes/1
  # PUT /trackkrhomes/1.xml
  def update
    @trackkrhome = Trackkrhome.find(params[:id])

    respond_to do |format|
      if @trackkrhome.update_attributes(params[:trackkrhome])
        format.html { redirect_to(@trackkrhome, :notice => 'Trackkrhome was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trackkrhome.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trackkrhomes/1
  # DELETE /trackkrhomes/1.xml
  def destroy
    @trackkrhome = Trackkrhome.find(params[:id])
    @trackkrhome.destroy

    respond_to do |format|
      format.html { redirect_to(trackkrhomes_url) }
      format.xml  { head :ok }
    end
  end
end
