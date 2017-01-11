class ContactsController < ApplicationController

def index
end

def new
@contact = Contact.new
end

def create

# @contact = Contact.new(contact_params)
# respond_to do |format|
#       if @contact.save
#         format.html { redirect_to root_path, notice: 'Message sent successfully.' }
#     else
#         format.html { render :new }
#         format.json { render json: @contact.errors, status: :unprocessable_entity }
#     end
# end
# end


   @contact = Contact.new(contact_params)
    
    if @contact.valid?
      ContactMailer.new_message(@contact).deliver
      redirect_to root_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end




private

def contact_params
 params.require(:contact).permit(:name, :email, :description)

end

end