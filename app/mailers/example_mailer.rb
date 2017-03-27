class ExampleMailer < ApplicationMailer
	default from: "nayinigopi93@example.com"
  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
