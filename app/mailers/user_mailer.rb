class UserMailer < ActionMailer::Base
  default :from => "no-reply@vmware.com"

  def welcome_email
  	@test = "1111"
  	mail(:to => 'fray9166@gmail.com', :subject => "test")
  end
end
