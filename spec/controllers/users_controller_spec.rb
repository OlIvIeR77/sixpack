require 'spec_helper'

describe RegistrationsController do

	login_user

	it "should have a current user" do
		subject.current_user.should_not be_nil
		#binding.pry
		#get :index, {}
	end
	
end