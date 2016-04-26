class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    @url  = 'http://example.com/login'
    mail(to: ["gkunwar09@gmail.com", "add2ramesh@gmail.com", "meamir08@gmail.com", "niyashbadal@gmail.com", "keyswor1@gmail.com"], subject: 'Welcome to My Awesome Site')

  end
end
