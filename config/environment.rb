# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :port => EVN['MAILGUN_SMTP_PORT'],
    :address => ENV['MAILGUN_SMTP_SERVER'],
    :user_name => ENV['MAILERGUN_SMTP_LOGIN'],
    :password => ENV['MAILERGUN_SMTP_PASSWORD'],
    :domina => 'fathomless-brushlands-22916.herokuapp.com',
    :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp