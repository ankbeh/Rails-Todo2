ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	address: 'smtp.gmail.com',
	port: 587,
	domain: 'gmail.com',
	user_name: "bumbuzz555.1@gmail.com",
	password: "7289815803",
	authentication: 'plain',
	enable_starttls_auto: true 
}