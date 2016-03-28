class ContactsController < ApplicationController
  def new
  end

  def create 
    @contact=Contact.new(params_params)
    @contact.save
  end

  private

  def params_params
    params.require(:contact).permit(:email,:message)  
  end


end
