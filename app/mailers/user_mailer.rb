class UserMailer < ActionMailer::Base
  default :from => "fray9166@gmail.com"

  def welcome_email(email)
  	mail(:to => email, :subject => "Your Login credential")
  end
end
