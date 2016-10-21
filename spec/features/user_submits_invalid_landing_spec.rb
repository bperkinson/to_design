#user submits invalid landing content
require "rails_helper"

context "the form is invalid" do 
	scenario "they see a usefull error message" do
		landing_description = "The failed landing"
		user_login
		visit new_landing_path
		fill_in "landing_description", with: landing_description
		click_on "Create Landing"
		expect(page).to have_content "Philosophy can't be blank"	
	end

	def user_login
		user = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
	end

end