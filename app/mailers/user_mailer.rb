class UserMailer < ApplicationMailer
  default from: "catz@catz-creationz.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'ckraus0089@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "CaTz-CreaTionz"
    mail(to: user.email,
       subject: "Welcome to #{@appname}!")
  end
end
