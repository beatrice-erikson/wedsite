class AddNeedslodgingToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :needslodging, :int
  end
end
