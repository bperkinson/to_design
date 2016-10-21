#user_submits_a_landing
require "rails_helper"

RSpec.feature "user submits a landing" do 
	scenario "they see the landing page" do
		landing_description = "The testing project"
		landing_philosophy = "a long desc."
		landing_nope = "don't find me"
		user_login
		visit new_landing_path

		fill_in "landing_description", with: landing_description
		fill_in "landing_philosophy", with: landing_philosophy
		click_on "Create Landing"
		expect(page).to have_content landing_description
	end

	def user_login
		user = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
	end
end

