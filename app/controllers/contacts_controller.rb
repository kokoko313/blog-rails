class ContactsController < ApplicationController
  def new
  end

  def create 
    @contact=Contact.new(params_params)
    if @contact.valid? 
      @contact.save
    else
      render action: 'new'
    end

  end

  private

  def params_params
    params.require(:contact).permit(:email,:message)  
  end


end
