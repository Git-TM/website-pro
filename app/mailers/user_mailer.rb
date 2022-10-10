class UserMailer < ApplicationMailer
  def welcome_email
    @contact = params[:contact]
    mail(to: "tristan.monteiro.pro@gmail.com", subject: 'Nouvelle Mission Site Web')
  end
end
