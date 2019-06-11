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

ActiveRecord::Schema.define(version: 2019_06_11_141149) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "date"
    t.integer "score_1"
    t.integer "score_2"
    t.string "phase"
    t.string "group"
    t.integer "country_1_id"
    t.integer "country_2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_1_id"], name: "index_matches_on_country_1_id"
    t.index ["country_2_id"], name: "index_matches_on_country_2_id"
  end

end
