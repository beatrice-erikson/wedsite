class CreateAccessibility < ActiveRecord::Migration[5.0]
  def change
    create_table :accessibilities do |t|
      t.string :name
    end
    create_table :access_needs do |t|
      t.belongs_to :rsvp, index: true
      t.belongs_to :accessibility, index: true
    end
  end
end
