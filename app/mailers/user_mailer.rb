class UserMailer < ActionMailer::Base
  default :from => "no-reply@letshire.com"

  def welcome_email
  	@test = "1111"
  	mail(:to => 'test@letshire.com', :subject => "test")
  end
end
