require 'spec_helper'

describe "UserIsLandings" do

	it "shows the landing page" do
		visit root_path
		current_path.should eql root_path
	end

	it "displays an input to enter mail" do
		visit root_path
		page.should have_selector("input[type=submit][value='login']")
		#binding.pry
	end

end
