#user submits invalid project content
require "rails_helper"

context "the form is invalid" do 
	scenario "they see a usefull error message" do
		project_description = "The failed project"
		user_login
		visit projects_path
		click_on "New Project"
		fill_in "project_description", with: project_description
		click_on "Create Project"
		expect(page).to have_content "Name can't be blank"	
	end

	def user_login
		user = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
	end

end