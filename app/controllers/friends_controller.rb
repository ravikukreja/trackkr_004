class FriendsController < ApplicationController
  # GET /friends
  # GET /friends.xml
  def index
    @friends = Friend.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @friends }
    end
  end

  # GET /friends/1
  # GET /friends/1.xml
  def show
    @friend = Friend.find_by_authenticity_token(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @friend }
    end
  end

  # GET /friends/new
  # GET /friends/new.xml
  def new
    @friend = Friend.new

    respond_to do |format|
      format.html { render :layout => false}
      format.xml  { render :xml => @friend }
    end
  end

  # GET /friends/1/edit
  def edit
    @friend = Friend.find(params[:id])
  end

  # POST /friends
  # POST /friends.xml
  def create
    @friend = Friend.new(params[:friend])

    respond_to do |format|
      if @friend.save
        format.html { redirect_to(@friend, :notice => 'Friend was successfully created.') }
        format.xml  { render :xml => @friend, :status => :created, :location => @friend }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @friend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /friends/1
  # PUT /friends/1.xml
  def update
    @friend = Friend.find(params[:id])

    respond_to do |format|
      if @friend.update_attributes(params[:friend])
        format.html { redirect_to(@friend, :notice => 'Friend was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @friend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /friends/1
  # DELETE /friends/1.xml
  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy

    respond_to do |format|
      format.html { redirect_to(friends_url) }
      format.xml  { head :ok }
    end
  end
  
  def search
    @users = params[:email].blank? ? [] : User.search(params,"email")
    render :layout => false
  end
  
  def send_invite
    flash[:status] = "Invitatation successfully sent"
    #need to Configure Mail Details
    if not params[:user][:id].blank? 
      @products = Product.find(params[:product_id])
      @friend_user = User.find(params[:user][:id])
      @products.each do |product|
        status = Friend.create(:user_id=>current_user.id,:product_id=>product.id,:friend_id => @friend_user.id,:authenticity_token => random_string)
        UserMailer.invite_to_product(status,params[:user][:content]).deliver if status
      end
    else
      @product = Product.find(params[:single_product_id])
      UserMailer.invite_to_trackkr(params[:user][:email],@product,params[:user][:invite_content]).deliver 
    end
    redirect_to :controller=>'dashboards',:action=>"index"
  end
  
  def random_string
    (0...50).map{ ('a'..'z').to_a[rand(26)] }.join    
  end
end
