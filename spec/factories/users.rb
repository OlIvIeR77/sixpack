# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	factory :user do
		username 'olivier'
		email "ducrouxolivier@example.com"
		password 'ducrouxolivier@gmail.com'
		#password_confirmation 'changeme'
		# required if the Devise Confirmable module is used
		# confirmed_at Time.now
	end
end