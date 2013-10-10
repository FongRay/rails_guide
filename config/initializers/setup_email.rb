ActionMailer::Base.smtp_settings = {
	:address              => "sc9-mailhost3.vmware.com",
	:port                 => 25,
	:authentication       => "plain",
	:enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true