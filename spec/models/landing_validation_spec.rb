#landing_validation_spec
require "rails_helper"

RSpec.describe Landing, "validations" do
	it { is_expected.to validate_presence_of(:description)}
	it { is_expected.to validate_presence_of(:philosophy)}
end