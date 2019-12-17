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

ActiveRecord::Schema.define(version: 2019_12_17_082043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "comparisons", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "record_1_id"
    t.bigint "record_2_id"
    t.integer "choice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_1_id"], name: "index_comparisons_on_record_1_id"
    t.index ["record_2_id"], name: "index_comparisons_on_record_2_id"
    t.index ["user_id"], name: "index_comparisons_on_user_id"
  end

  create_table "records", force: :cascade do |t|
    t.integer "crime_id"
    t.string "name"
    t.string "first"
    t.string "last"
    t.date "compas_screening_date"
    t.string "sex"
    t.date "dob"
    t.integer "age"
    t.text "age_cat"
    t.string "race"
    t.integer "juv_fel_count"
    t.decimal "decile_score"
    t.integer "juv_misd_count"
    t.integer "juv_other_count"
    t.integer "priors_count"
    t.integer "days_b_screening_arrest"
    t.datetime "c_jail_in"
    t.datetime "c_jail_out"
    t.integer "c_case_number"
    t.datetime "c_offense_date"
    t.datetime "c_arrest_date"
    t.integer "c_days_from_compas"
    t.string "c_charge_degree"
    t.text "c_charge_desc"
    t.integer "is_recid"
    t.string "r_case_number"
    t.string "r_charge_degree"
    t.date "r_offense_date"
    t.text "r_charge_desc"
    t.date "r_jail_in"
    t.date "r_jail_out"
    t.integer "is_violent_recid"
    t.string "vr_case_number"
    t.string "vr_charge_degree"
    t.date "vr_offense_date"
    t.text "vr_charge_desc"
    t.text "type_of_assessment"
    t.string "score_text"
    t.date "screening_date"
    t.text "v_type_of_assessment"
    t.integer "v_decile_score"
    t.string "v_score_text"
    t.date "v_screening_date"
    t.date "in_custody"
    t.date "out_custody"
    t.integer "Start"
    t.integer "end"
    t.integer "event"
    t.integer "two_year_recid"
    t.integer "age_at_first_arrest"
    t.string "first_arrest"
    t.integer "active_supervision"
    t.string "pending_charge"
    t.integer "fta_1"
    t.integer "fta_2"
    t.integer "fta_3"
    t.integer "fta_4"
    t.integer "fta_5"
    t.integer "fta_6"
    t.integer "fta_older"
    t.integer "prior_misdemeanors"
    t.integer "prior_felonies"
    t.integer "prior_misdemeanors_last_year"
    t.integer "prior_misdemeanors_last_two_years"
    t.integer "violent_priors"
    t.integer "prior_incarcerations"
    t.integer "prior_drug_convictions"
    t.string "current_violent_charge"
    t.string "current_f_dtf"
    t.string "Employment"
    t.string "expects_someone"
    t.string "drug_abuse_history"
    t.string "illegal_drug_use"
    t.string "current_residences"
    t.string "current_residence"
    t.string "children_spouse_or_parent"
    t.string "Nyc"
    t.string "Telephone"
    t.integer "r_days_from_arrest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_hash"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "survey_size"
    t.integer "pairs_count"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comparisons", "records", column: "record_1_id"
  add_foreign_key "comparisons", "records", column: "record_2_id"
  add_foreign_key "comparisons", "users"
end
