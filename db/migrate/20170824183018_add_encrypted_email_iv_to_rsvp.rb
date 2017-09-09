class AddEncryptedEmailIvToRsvp < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :encrypted_email_iv, :string
  end
end
