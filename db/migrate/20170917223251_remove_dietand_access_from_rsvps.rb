class RemoveDietandAccessFromRsvps < ActiveRecord::Migration[5.0]
  def change
    remove_column :rsvps, :diet
    remove_column :rsvps, :access
  end
end
