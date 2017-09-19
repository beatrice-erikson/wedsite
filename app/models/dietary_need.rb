class DietaryNeed < ApplicationRecord
    belongs_to :rsvp
    belongs_to :diet
    accepts_nested_attributes_for :diet
end
