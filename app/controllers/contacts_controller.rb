class ContactsController < ApplicationController


  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      @contact.save
      flash.now[:error] = nil
      redirect_to root_path, notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :name, :email, :company, :message)
  end
end
