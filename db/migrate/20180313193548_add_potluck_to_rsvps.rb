class AddPotluckToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :potluck, :boolean
  end
end
