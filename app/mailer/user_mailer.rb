class UserMailer < ActionMailer::Base
  default :from => "trackkr@gmail.com"
  
  def invite_to_product(frd_user,product,content)
    @frd_user = frd_user
    @content = content
    mail(:to => "#{@frd_user.username} <#{@frd_user.email}>", :subject => "Please visit this Product #{product.name} in Trackkr" )
  end
end

