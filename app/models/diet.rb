class Diet < ApplicationRecord
    validates :name, presence: true
    has_many :dietary_needs
    has_many :rsvps, through: :dietary_needs
end