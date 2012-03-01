class UserMailer < ActionMailer::Base
  default :from => "localhost:3000"
  
  def invite_to_product(frd_obj,content)
    @frd_user = frd_obj
    @content = content + ' Activate the product: ' + friendship_url(:id=>frd_obj.authenticity_token,:host=>'trackkr.com')  
    mail(:to => "#{@frd_user.friendship.username} <#{@frd_user.friendship.email}>", :subject => "Please visit this Product #{frd_obj.product.name} in Trackkr" )
  end
  
  def invite_to_trackkr(user_email,product,content)
    @frd_user = user_email
    @content = content + ' Activate the product: ' + "http://trackkr.com/user_sessions/new"
    mail(:to => @frd_user, :subject => "Please visit this Product #{product.name} in Trackkr" )
  end
  
  def password_reset(user)
    @user = user
    mail(:to =>user.email, :subject => "Password Reset",:from => "manishkukreja@gmail.com")
    #mail :to => user.email, :subject => "Password Reset",:host=>"localhost:3000"
  end
  
  def share(share_dashboard)
    mail(:to =>share_dashboard.email, :subject => "SHare Trackkr with Friends",:from => "manishkukreja@gmail.com")
  end
  
end

