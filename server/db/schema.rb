# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_13_195828) do

  create_table "pets", force: :cascade do |t|
    t.integer "id_pet"
    t.string "name"
    t.datetime "birth_date"
    t.decimal "weight"
    t.string "profile_photo"
    t.string "kind"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "pet_id"
    t.integer "id_photo"
    t.string "photo"
    t.string "description"
    t.index ["pet_id"], name: "index_photos_on_pet_id"
  end

  create_table "vaccines", force: :cascade do |t|
    t.integer "pet_id"
    t.integer "id_vaccine"
    t.string "name"
    t.datetime "date"
    t.integer "duration"
    t.index ["pet_id"], name: "index_vaccines_on_pet_id"
  end

end
