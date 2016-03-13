ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :tls                  => false,
  :address              => ENV['GMAIL_SMTP_ADDRESS'],
  :port                 => 587,
  :domain               => ENV['GMAIL_SMTP_DOMAIN'],
  :user_name            => ENV['GMAIL_SMTP_USER_NAME'],
  :password             => ENV['GMAIL_SMTP_PASSWORD'],
  :authentication       => 'plain',
  :enable_starttls_auto => true
}

if Rails.env.development? || Rails.env.test?
  ActionMailer::Base.register_interceptor(SandboxEmailInterceptor)
end
