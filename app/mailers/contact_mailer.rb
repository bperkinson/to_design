class ContactMailer < ApplicationMailer


	def new_contact(contact)
		@contact = contact
		mail(to: "#{@contact.email}", bcc: "bob@125design.com", subject: 'Thank you for contacting 125design.com')
	end
end