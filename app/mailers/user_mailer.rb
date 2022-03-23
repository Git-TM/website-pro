class UserMailer < ApplicationMailer
  def welcome_email
    @contact = params[:contact]
    mail(to: @contact.email, subject: 'Nouvelle Mission Site Web')
  end
end
