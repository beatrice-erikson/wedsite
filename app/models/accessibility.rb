class Accessibility < ApplicationRecord
    validates :name, presence: true
    has_many :access_needs
    has_many :rsvps, through: :access_needs
end