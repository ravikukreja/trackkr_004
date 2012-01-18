class UserMailer < ActionMailer::Base
  default :from => "localhost:3000"
  
  def invite_to_product(frd_obj,content)
    @frd_user = frd_obj
    @content = content + ' Activate the product: ' + friend_url(:id=>frd_obj.authenticity_token,:host=>'trackkr.com')  
    mail(:to => "#{@frd_user.friend.username} <#{@frd_user.friend.email}>", :subject => "Please visit this Product #{frd_obj.product.name} in Trackkr" )
  end
  
  def invite_to_trackkr(user_email,product,content)
    @frd_user = user_email
    @content = content + ' Activate the product: ' + "http://trackkr.com/user_sessions/new"
    mail(:to => @frd_user, :subject => "Please visit this Product #{product.name} in Trackkr" )
  end
  
  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end
end

