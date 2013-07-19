class ApplicationController < ActionController::Base
  protect_from_forgery
  	def after_sign_in_path_for(resource)
		'/home/page'
	end
	def after_sign_up_path_for(resource)
		'/home/page'
	end
  #binding.pry
end
