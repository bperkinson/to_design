#guest submits a contact
require "rails_helper"

RSpec.feature "guest submits a contact" do
	scenario "they see a thank you alert" do
		contact_name = "the guest"
		contact_email = "guest@125design.com"
		contact_phone = "2041112222"
		landing = FactoryGirl.create(:landing)
		visit root_path
		click_on "Contact Us!", match: :first
		fill_in "contact_name", with: contact_name
		fill_in "contact_email", with: contact_email
		fill_in "contact_phone", with: contact_phone
		click_on "Submit your information"
		expect(page).to have_css ".alert-success", text: "Thank you for contacting us we will respond to your inquiry as soon as possible."
	end
end