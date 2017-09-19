class CreateDiet < ActiveRecord::Migration[5.0]
  def change
    create_table :diets do |t|
      t.string :name
    end
    create_table :dietary_needs do |t|
      t.belongs_to :rsvp, index: true
      t.belongs_to :diet, index: true
    end
  end
end
