class UserMailer < ApplicationMailer
  default from: "info@deurvorst.nu"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
          :to => "judeur@gmail.com",
          :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Your Bookstore"
    mail(   :to => user.email,
            :subject => "Welcome to #{@appname}!")
  end
end
