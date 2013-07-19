require 'spec_helper'

describe "UserRegistrations" do

	before(:each) do
		@user = FactoryGirl.create(:user)
	end
	
	it "allows new users to register with an email address and password" do
	    #visit "/users/sign_up"

	    #fill_in "user_username", :with => @user.username
	    #fill_in "user_password", :with => @user.password

	    #click_button "Sign up"

	    #page.should have_content("Welcome! You have signed up successfully.")
	    #expect(response.body).to include("also this text is not here")
  	end
end
