#user_submits_a_tool
require "rails_helper"

RSpec.feature "user submits a tool" do
	scenario "they see the submitted tool" do
		tool_name = "the best tool"
		user_login
		visit new_tool_path

		fill_in "tool_name", with: tool_name
		click_on "Create Tool"
		expect(page).to have_content tool_name
	end

	def user_login
		user = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
	end

end