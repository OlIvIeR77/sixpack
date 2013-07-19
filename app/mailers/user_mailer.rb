class UserMailer < ActionMailer::Base
  #default from: "from@example.com"
  def registration_mail(user)
  	@user = user
  	mail(:to => user.email, :subject => "Welcome on 6pack #{user.username} !", :from => "emailrailsapps@gmail.com")
  end
end
