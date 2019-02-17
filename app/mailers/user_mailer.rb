class UserMailer < ApplicationMailer
  default from: "catz@catz-creationz.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'ckraus0089@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end
