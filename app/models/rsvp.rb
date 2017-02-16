class Rsvp < ApplicationRecord
	def first_name
		name.split(" ").first
	end
	def last_name
		name.split(" ").last
	end
end
