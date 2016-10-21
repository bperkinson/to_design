class Contact < ActiveRecord::Base
	validates :name, :email, presence: true
	validates :phone, :phony_plausible => false
	validates :email, format: Devise::email_regexp


private
	def email_or_phone
		if (email.blank? && phone.blank?)
			errors.add(:email, "You need to fill in an email or a phone number")
		end
	end

end
