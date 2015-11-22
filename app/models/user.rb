class User < ActiveRecord::Base
	attr_accessible :email, :full_name, :password, :department, :password_confirmation

	validates_presence_of :email, :full_name, :password
	validates_confirmation_of :password
	validates_length_of :full_name, :minimum => 10, :allow_blank => false
	validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	has_secure_password
	before_create :generate_token
	def generate_token
		self.confirmation_token = SecureRandom.urlsafe_base64
	end

	def confirm!
		return if confirmed?
		self.confirmed_at = Time.current
		self.confirmation_token = ''
		save!
	end

	def confirmed?
		confirmed_at.present?
	end
end
