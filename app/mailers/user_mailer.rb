class UserMailer < ApplicationMailer
  def welcome_email
    mail(to: "tristan.monteiro.pro@gmail.com", subject: 'new announce')
  end
end
