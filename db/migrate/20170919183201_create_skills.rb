class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
    end
    create_table :rsvp_skills do |t|
      t.belongs_to :rsvp, index: true
      t.belongs_to :skill, index: true
    end
  end
end
