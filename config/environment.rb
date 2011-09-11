# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Trackkr002::Application.initialize!
ActionMailer::Base.smtp_settings = {
    :tls => true,
    :address => "smtp.gmail.com",
    :port => "587",
    :domain => "GMAIL",
    :authentication => :plain,
    :user_name => "trackkr",
    :password => "trackkr@123"
  }