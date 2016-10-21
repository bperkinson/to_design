#user submits invalid tool content
require "rails_helper"

context "the form is invalid" do 
	scenario "they see a usefull error message" do
		tool_description = "The failed tool"
		user_login
		visit tools_path
		click_on "New Tool"
		fill_in "tool_description", with: tool_description
		click_on "Create Tool"
		expect(page).to have_content "Name can't be blank"	
	end

	def user_login
		user = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
	end

end