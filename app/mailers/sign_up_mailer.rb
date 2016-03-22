class SignUpMailer < ApplicationMailer
	default from: "anionrush@gmail.com"

	def conf_email(user)
		headers["Message-ID"] = "Signup Confirmation"
		@user = user
		mail(to: user.email, subject: "Signup Confirmation")
  end

end
