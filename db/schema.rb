# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100914025626) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "current_address"
    t.integer  "current_zip_code"
    t.string   "current_state"
    t.string   "current_city"
    t.integer  "desired_location_id"
    t.string   "phone_number"
    t.string   "email"
    t.string   "gender"
    t.integer  "age"
    t.datetime "birth_date"
    t.integer  "race_id"
    t.integer  "religion_id"
    t.integer  "desired_rent_min"
    t.integer  "desired_rent_max"
    t.string   "available_days"
    t.integer  "available_hours"
    t.integer  "approved_by"
    t.datetime "approval_date"
    t.string   "desired_gender"
    t.integer  "desired_age_min"
    t.integer  "desired_age_max"
    t.boolean  "has_a_room"
    t.integer  "desired_move_in_month"
    t.boolean  "desired_smoking_preference"
    t.integer  "desired_number_of_roommates"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
    t.boolean  "has_kids"
    t.boolean  "roomy_kids"
    t.boolean  "has_pets"
    t.boolean  "roomy_pets"
  end

end
