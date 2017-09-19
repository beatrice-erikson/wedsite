class ChangeAttendingInRsvps < ActiveRecord::Migration[5.0]
  def self.up
    change_column :rsvps, :is_attending, 'integer USING CAST(is_attending AS integer)'
    rename_column :rsvps, :is_attending, :response
  end
 
  def self.down
    rename_column :rsvps, :response, :is_attending
    change_column :rsvps, :is_attending, 'boolean USING CAST(is_attending AS boolean)'
  end
end
