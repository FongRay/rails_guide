ActionMailer::Base.smtp_settings = {
	:address              => "smtp.gmail.com",
	:port                 => 587,
	:domain               => "whatever",
	:user_name            => "fray9166@gmail.com",
	:password             => "xx",
	:authentication       => "plain",
	:enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :sendmail
ActionMailer::Base.perform_deliveries = true