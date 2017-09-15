class Babysitter < ApplicationRecord
	has_many :selected_babysitting_times

	before_save { self.email = email.downcase }
	
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
    					format: { with: VALID_EMAIL_REGEX },
    					uniqueness: { case_sensitive: false }

 	has_secure_password
 	validates :password, presence: true
end
