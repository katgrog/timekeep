class User < ActiveRecord::Base
	has_secure_password
	has_many :watches
	has_many :orders 

	validates :email, presence: true, uniqueness: { case_sensitive: false }

	before_create :sanitize_emails

	def sanitize_emails
		self.email = email.downcase 
	end

	def owns?(resource)
		self == resource.user 
	end

	def full_name
		"#{first_name} #{last_name}"
	end

	def name
		if first_name.present? 
			full_name
		else
			email
		end
	end
end
