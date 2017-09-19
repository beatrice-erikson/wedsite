class RsvpSkill < ApplicationRecord
    belongs_to :rsvp
    belongs_to :skill
    accepts_nested_attributes_for :skill
end
