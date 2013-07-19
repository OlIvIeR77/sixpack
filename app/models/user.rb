class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	# Setup accessible (or protected) attributes for your model
	attr_accessible :username, :email, :password, :password_confirmation, :remember_me
	# attr_accessible :title, :body

	validates :username, :presence => true
	validates :email, :presence => true
	validates :password, :presence => true

	after_create :send_mail

	def send_mail
		UserMailer.registration_mail(self).deliver unless self.invalid?
	end

end
