class AddDistanceToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :distance, :string
  end
end
