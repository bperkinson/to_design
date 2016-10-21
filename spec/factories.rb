FactoryGirl.define do 

	factory :user do
		email 'test@example.com'
		password 'f4k3p455w0rd'
		admin true
	end

	factory :project do 
		name 'fast one'
		description 'long des...'
	end

	factory :tool do
		name 'useful tool!'
	end

	factory :landing do
		description "landing description"
		philosophy "something philisophical!"
	end

	factory :contact do
		name "boo tester"
		email "test@125design.com"
	end
end