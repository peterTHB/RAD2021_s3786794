# Load the Rails application.
require_relative 'application'

app_environment_variables = File.join(Rails.root, 'config', 'app_environment_variables.rb')
load(app_environment_variables) if File.exists?(app_environment_variables)

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   :user_name => 'apikey',
#   :password => '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',
#   :domain => "https://hidden-refuge-64928.herokuapp.com/",
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }