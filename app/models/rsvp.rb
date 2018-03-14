class Rsvp < ApplicationRecord
	validates :name, :email, presence: true
	attr_encrypted :email, key: ENV["EMAIL_KEY"]
	enum response: [:NA, :Yes, :No, :Undecided]
	enum needslodging: [:NA, :Yes, :No, :Unsure], _prefix: :lodging

	has_many :dietary_needs
	has_many :diets, through: :dietary_needs
	accepts_nested_attributes_for :diets
	accepts_nested_attributes_for :dietary_needs

	has_many :access_needs
	has_many :accessibilities, through: :access_needs
	accepts_nested_attributes_for :accessibilities
	accepts_nested_attributes_for :access_needs

	has_many :rsvp_skills
	has_many :skills, through: :rsvp_skills
	accepts_nested_attributes_for :skills
	accepts_nested_attributes_for :rsvp_skills

	def is_attending
		self.Yes?
	end
	def first_name
		name.split(" ").first
	end
	def last_name
		name.split(" ").last
	end
end
