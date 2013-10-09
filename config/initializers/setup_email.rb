ActionMailer::Base.smtp_settings = {
	:address              => "smtp.gmail.com",
	:port                 => 587,
	:user_name            => "fray9166@gmail.com",
	:password             => ENV["GMAIL_PASSWORD"],
	:authentication       => "plain",
	:enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true