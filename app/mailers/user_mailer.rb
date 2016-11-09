class UserMailer < ApplicationMailer
	default from: "Ryan_Patterson@yahoo.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'Ryan_Patterson@yahoo.com',
        :subject => "A new contact message from #{name}")
  end
end
