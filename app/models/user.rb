class User < ActiveRecord::Base
    attr_accessible :email, :full_name, :password, :department, :password_confirmation

    validates_presence_of :email, :full_name, :password
    validates_confirmation_of :password
    validates_length_of :full_name, :minimum => 10, :allow_blank => false
    validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates_uniqueness_of :email
    has_secure_password
end
