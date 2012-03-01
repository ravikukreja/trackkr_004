class ShareDashboardsController < ApplicationController
  # GET /share_dashboards
  # GET /share_dashboards.xml
  def index
    @share_dashboards = ShareDashboard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @share_dashboards }
    end
  end

  # GET /share_dashboards/1
  # GET /share_dashboards/1.xml
  def show
    @share_dashboard = ShareDashboard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @share_dashboard }
    end
  end

  # GET /share_dashboards/new
  # GET /share_dashboards/new.xml
  def new
    @share_dashboard = ShareDashboard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @share_dashboard }
    end
  end

  # GET /share_dashboards/1/edit
  def edit
    @share_dashboard = ShareDashboard.find(params[:id])
  end

  # POST /share_dashboards
  # POST /share_dashboards.xml
  def create
    @share_dashboard = ShareDashboard.new(params[:share_dashboard])

    respond_to do |format|
      if @share_dashboard.save
        UserMailer.share(@share_dashboard).deliver
        format.html { redirect_to(@share_dashboard, :notice => 'Dashboard was successfully shared.') }
        format.xml  { render :xml => @share_dashboard, :status => :created, :location => @share_dashboard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @share_dashboard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /share_dashboards/1
  # PUT /share_dashboards/1.xml
  def update
    @share_dashboard = ShareDashboard.find(params[:id])

    respond_to do |format|
      if @share_dashboard.update_attributes(params[:share_dashboard])
        format.html { redirect_to(@share_dashboard, :notice => 'Share dashboard was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @share_dashboard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /share_dashboards/1
  # DELETE /share_dashboards/1.xml
  def destroy
    @share_dashboard = ShareDashboard.find(params[:id])
    @share_dashboard.destroy

    respond_to do |format|
      format.html { redirect_to(share_dashboards_url) }
      format.xml  { head :ok }
    end
  end
end
