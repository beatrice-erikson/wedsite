class CreateRsvps < ActiveRecord::Migration[5.0]
  def change
    create_table :rsvps do |t|
      t.string :name
      t.boolean :has_rsvpd
      t.boolean :is_attending

      t.timestamps
    end
  end
end
