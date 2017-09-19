class AccessNeed < ApplicationRecord
    belongs_to :rsvp
    belongs_to :accessibility
    accepts_nested_attributes_for :accessibility
end
