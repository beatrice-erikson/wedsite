class AddCanoeToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :canoe, :boolean
  end
end
