class AddFamilyInvitedToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :family_invited, :boolean
  end
end
