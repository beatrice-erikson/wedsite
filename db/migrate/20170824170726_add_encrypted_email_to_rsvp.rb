class AddEncryptedEmailToRsvp < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :encrypted_email, :string
  end
end
