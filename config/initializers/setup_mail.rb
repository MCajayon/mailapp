ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "marvi.cajayon@gmail.com",
  :password             => "avi012809",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

require 'development_mail_interceptor' #add this line
ActionMailer::Base.default_url_options[:host] = "localhost:3000"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development? -- FOR DISABLE MAIL FOR DEV ENV

#--- WORKING FOR INTERCEPTOR ONLY ---
# require 'development_mail_interceptor' #add this line
# ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if  Rails.env.development?

#config.action_mailer.perform_deliveries = true, 