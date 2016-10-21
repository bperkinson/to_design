# spec/mailers/link_mailer_spec.rb
require "rails_helper"

RSpec.describe ContactMailer, "#new_contact" do
	it "delivers a new contact notification email" do
		contact = build(:contact)
		email = ContactMailer.new_contact(contact)
		expect(email).to deliver_to(contact.email) 
		expect(email).to deliver_from("testing@125design.com")
		expect(email).to have_subject("Thank you for contacting 125design.com") 
	end 
end