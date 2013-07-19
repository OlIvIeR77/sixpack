require "spec_helper"

describe UserMailer do

 	let(:user) { mock_model(User, :username => 'olivier', :email => 'ducrouxolivier@email.com') }
    let(:mail) { UserMailer.registration_mail(user) }
 
    #ensure that the subject is correct
    it 'should renders the subject' do
    	#binding.pry
      	mail.subject.should == "Welcome on 6pack #{user.username} !"
    end
 
    #ensure that the receiver is correct
    it 'should renders the receiver email' do
      	mail.to.should == [user.email]
    end
 
    #ensure that the sender is correct
    it 'should renders the sender email' do
      	mail.from.should == ['emailrailsapps@gmail.com']
    end
 
    #ensure that the username variable appears in the email body
    it 'should assigns username' do
    	#binding.pry
      	mail.body.encoded.should match(user.username)
    end
 
    #ensure that the link to edit user profile appears in the email body
    it 'should assigns the user edit profile link' do
    	#binding.pry
      	mail.body.encoded.should match("http://localhost:3000//users/edit.#{user.id}")
    end

end
