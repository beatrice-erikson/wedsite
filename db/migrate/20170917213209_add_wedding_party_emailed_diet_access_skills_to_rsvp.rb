class AddWeddingPartyEmailedDietAccessSkillsToRsvp < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :wedding_party, :boolean
    add_column :rsvps, :emailed?, :boolean
    add_column :rsvps, :diet, :string
    add_column :rsvps, :access, :string
    add_column :rsvps, :skills, :string
  end
end
