class Skill < ApplicationRecord
    validates :name, presence: true
    has_many :rsvp_skills
    has_many :rsvps, through: :rsvp_skills
end