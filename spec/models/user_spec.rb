require 'spec_helper'

describe User do

	before(:each) do
		@user = FactoryGirl.create(:user)
	end

	it "has a valid factory (is valid with an email a password and a username)" do
		@user.should be_valid
	end

	it "should not be valid without an email" do
		#binding.pry
		#user = FactoryGirl.build(:user, :email => nil)
		@user.email = nil
		@user.should_not be_valid
	end

	it "should have an email" do
		@user.email.should_not be_nil
	end

	it "should not pass with a username nil" do
		@user.username = nil
		@user.should_not be_valid
	end

	it "should have a username" do
		@user.username.should_not be_nil
	end

	it "should not be valid without a password" do
		@user.password = nil
		@user.should_not be_valid
	end

	it "should have a password" do
		#binding.pry
		@user.password.should_not be_nil
	end

	describe "send mail" do

		it "should send an mail after user creation" do
			@user.send_mail
			ActionMailer::Base.deliveries.last.to.should == [@user.email]
			#binding.pry
		end

	end

end
