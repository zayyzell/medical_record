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

ActiveRecord::Schema.define(version: 20161201214034) do

  create_table "medical_events", force: :cascade do |t|
    t.string   "date"
    t.text     "description"
    t.string   "provider"
    t.integer  "medical_record_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["medical_record_id"], name: "index_medical_events_on_medical_record_id"
  end

  create_table "medical_records", force: :cascade do |t|
    t.boolean  "anemia"
    t.boolean  "angina"
    t.boolean  "asthma"
    t.text     "cancer"
    t.boolean  "cataracts"
    t.boolean  "colities"
    t.boolean  "crohns_disease"
    t.boolean  "diabetes"
    t.boolean  "emphysema"
    t.boolean  "epilepsy"
    t.boolean  "goiter"
    t.boolean  "heart_murmur"
    t.boolean  "heart_problems"
    t.boolean  "hepatitis"
    t.boolean  "high_blood_pressure"
    t.boolean  "high_cholesterol"
    t.boolean  "hiv_aids"
    t.boolean  "hypothyroidism"
    t.boolean  "jaundice"
    t.boolean  "kidney_disease"
    t.boolean  "kidney_stones"
    t.boolean  "leukemia"
    t.boolean  "pneumonia"
    t.boolean  "psoriasis"
    t.boolean  "pulmonary_embolism"
    t.boolean  "rheumatic_fever"
    t.boolean  "stomach_peptic_ulcer"
    t.boolean  "stroke"
    t.boolean  "tuberculosis"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_medical_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
