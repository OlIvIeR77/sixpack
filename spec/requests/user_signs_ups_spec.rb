require 'spec_helper'

describe "UserSignsUps" do
	it "fills the email and submit the form" do
		visit root_path
		fill_in 'email', :with => "ducrouxolivier@gmail.com"
		click_button 'submitEmail'
		current_path.should == "/users/sign_up"
	end
end
