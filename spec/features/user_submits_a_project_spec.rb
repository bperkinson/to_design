#users submits a project
require "rails_helper"

RSpec.feature "user submits a project" do 
	scenario "they see a page with the new project" do
		project_name = "The testing project"
		project_description = "a long desc."
		project_link = "http://125design.com"
		user = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
		visit projects_path
		click_on "New Project"
		fill_in "project_name", with: project_name
		fill_in "project_description", with: project_description
		fill_in "project_link", with: project_link
		click_on "Create Project"
		expect(page).to have_content project_name
	end
end