# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    super
    @mail = params[:email]
    session[:email] = params[:email]
    #binding.pry
  end

  def create
    #binding.pry
    params[:user][:email] = session[:email]
    super
    #binding.pry
    #UserMailer.registration_mail(@user).deliver unless @user.invalid?
    @user.send_mail
  end

  def update
    super
  end
end 