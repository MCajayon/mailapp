class UserMailer < ActionMailer::Base
  default :from => "marvi.cajayon@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    attachments["rails.jpg"] = File.read("#{Rails.root}/public/images/rails.jpg")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end