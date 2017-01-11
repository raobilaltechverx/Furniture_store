class ContactMailer < ApplicationMailer

  default from: "shoaib@gems.techverx.com"
  default to: "rao.bilal@gems.techverx.com"

  def new_message(contact)
    @contact = contact
    
    mail subject: "Message from #{contact.name}"
  end

end
