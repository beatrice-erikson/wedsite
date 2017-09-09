class Rsvp < ApplicationRecord
	attr_encrypted :email, :key => ENV["EMAIL_KEY"]

	def first_name
		name.split(" ").first
	end
	def last_name
		name.split(" ").last
	end
end
