# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_18_184548) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peak_reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "peak_id"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peaks", force: :cascade do |t|
    t.string "name"
    t.string "range"
    t.string "elevation"
    t.string "official_14er"
    t.string "prominence"
    t.string "isolation"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "long", precision: 10, scale: 6
    t.string "route"
    t.string "distance"
    t.string "elevation_gain"
    t.string "difficulty"
    t.string "traffic_low"
    t.string "traffic_high"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rec_area_activities", force: :cascade do |t|
    t.integer "rec_area_id"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rec_area_reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "rec_area_id"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rec_areas", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "directions"
    t.string "phone_number"
    t.string "email"
    t.string "lat"
    t.string "long"
    t.string "organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "activity", default: [], array: true
    t.string "image_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

end
