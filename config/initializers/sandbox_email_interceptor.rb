class SandboxEmailInterceptor
  def self.delivering_email(message)
    message.to = ['sandbox@example.com']
  end
end

if Rails.env.development? || Rails.env.test?
  ActionMailer::Base.register_interceptor(SandboxEmailInterceptor)
end
