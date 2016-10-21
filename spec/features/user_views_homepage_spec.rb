require "rails_helper"

RSpec.feature "User views homepage" do 
	scenario "they see existing links" do 
		project = FactoryGirl.create(:project)
		landing = FactoryGirl.create(:landing)
		
		visit root_path
		expect(page).to have_content project.name 
	end
end