#project_validation_spec
require "rails_helper"

RSpec.describe Tool, "validations" do
	it { is_expected.to validate_presence_of(:name)}

end