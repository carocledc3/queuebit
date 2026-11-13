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

ActiveRecord::Schema[8.1].define(version: 2026_11_13_170606) do
  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "room_id", null: false
    t.index ["room_id"], name: "index_departments_on_room_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "designation"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.json "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id", null: false
    t.integer "organisation_id", null: false
    t.index ["employee_id"], name: "index_events_on_employee_id"
    t.index ["organisation_id"], name: "index_events_on_organisation_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id", null: false
    t.string "abbreviation"
    t.index ["department_id"], name: "index_organisations_on_department_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "reservation_start"
    t.datetime "reservation_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id", null: false
    t.integer "room_id", null: false
    t.index ["event_id"], name: "index_reservations_on_event_id"
    t.index ["room_id"], name: "index_reservations_on_room_id"
  end

  create_table "room_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "floor"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "building_id", null: false
    t.integer "room_type_id", null: false
    t.index ["building_id"], name: "index_rooms_on_building_id"
    t.index ["room_type_id"], name: "index_rooms_on_room_type_id"
  end

  add_foreign_key "departments", "rooms"
  add_foreign_key "employees", "departments"
  add_foreign_key "events", "employees"
  add_foreign_key "events", "organisations"
  add_foreign_key "organisations", "departments"
  add_foreign_key "reservations", "events"
  add_foreign_key "reservations", "rooms"
  add_foreign_key "rooms", "buildings"
  add_foreign_key "rooms", "room_types"
end
