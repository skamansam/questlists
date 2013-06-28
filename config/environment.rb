# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Questlists::Application.initialize!

  
  ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :authentication => :plain,
    :domain => ENV['QUESTLISTS_EMAIL_DOMAIN'],
    :user_name => ENV['QUESTLISTS_EMAIL_USERNAME'],
    :password => ENV['QUESTLISTS_EMAIL_PASSWORD'],
    :enable_starttls_auto => true
  }
  
  Mime::Type.register "text/ht", :html
