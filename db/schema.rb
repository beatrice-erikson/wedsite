# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180313193606) do

  create_table "access_needs", force: :cascade do |t|
    t.integer "rsvp_id"
    t.integer "accessibility_id"
    t.index ["accessibility_id"], name: "index_access_needs_on_accessibility_id"
    t.index ["rsvp_id"], name: "index_access_needs_on_rsvp_id"
  end

  create_table "accessibilities", force: :cascade do |t|
    t.string "name"
  end

  create_table "dietary_needs", force: :cascade do |t|
    t.integer "rsvp_id"
    t.integer "diet_id"
    t.index ["diet_id"], name: "index_dietary_needs_on_diet_id"
    t.index ["rsvp_id"], name: "index_dietary_needs_on_rsvp_id"
  end

  create_table "diets", force: :cascade do |t|
    t.string "name"
  end

  create_table "rsvp_skills", force: :cascade do |t|
    t.integer "rsvp_id"
    t.integer "skill_id"
    t.index ["rsvp_id"], name: "index_rsvp_skills_on_rsvp_id"
    t.index ["skill_id"], name: "index_rsvp_skills_on_skill_id"
  end

  create_table "rsvps", force: :cascade do |t|
    t.string   "name"
    t.boolean  "has_rsvpd"
    t.integer  "response"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "encrypted_email"
    t.string   "encrypted_email_iv"
    t.boolean  "wedding_party"
    t.boolean  "emailed?"
    t.string   "skills"
    t.string   "plusone"
    t.string   "distance"
    t.boolean  "potluck"
    t.boolean  "canoe"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
  end

end
