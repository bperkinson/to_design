#project_validation_spec
require "rails_helper"

RSpec.describe Project, "validations" do
	it { is_expected.to validate_presence_of(:name)}
	it { is_expected.to validate_presence_of(:description)}
end