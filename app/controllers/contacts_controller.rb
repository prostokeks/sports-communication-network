class ContactsController < ApplicationController

  before_action :correct_user, only: :index

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def correct_user
    unless user_signed_in? and current_user.workgroup == "Admin"
      redirect_to root_path
    end
  end
end
