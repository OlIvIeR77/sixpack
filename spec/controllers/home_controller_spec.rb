require 'spec_helper'

describe HomeController do
	it "should be successful" do
		get "index"
		#response.success?.should be_true
		response.should be_success
		#binding.pry
	end
end