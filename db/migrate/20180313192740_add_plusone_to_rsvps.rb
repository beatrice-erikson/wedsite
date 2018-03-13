class AddPlusoneToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :plusone, :string
  end
end
