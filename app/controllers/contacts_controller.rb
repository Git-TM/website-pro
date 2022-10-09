class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      UserMailer.with(contact: @contact).welcome_email.deliver_now
      redirect_to root_path, notice: 'Requête envoyée'
    end

  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :name, :email, :company, :message)
  end
end
