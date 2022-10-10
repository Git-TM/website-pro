class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :name, :email, :company, :message)
  end
end
