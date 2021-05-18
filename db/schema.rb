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

ActiveRecord::Schema.define(version: 2021_05_18_115158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidate_skills", force: :cascade do |t|
    t.bigint "candidate_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_candidate_skills_on_candidate_id"
    t.index ["skill_id"], name: "index_candidate_skills_on_skill_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "first_name"
    t.string "email"
    t.string "linkedin"
    t.string "angellist"
    t.bigint "position_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["position_id"], name: "index_candidates_on_position_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.bigint "recruiter_id", null: false
    t.bigint "candidate_id", null: false
    t.date "date"
    t.time "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_interviews_on_candidate_id"
    t.index ["recruiter_id"], name: "index_interviews_on_recruiter_id"
  end

  create_table "position_skills", force: :cascade do |t|
    t.bigint "position_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["position_id"], name: "index_position_skills_on_position_id"
    t.index ["skill_id"], name: "index_position_skills_on_skill_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_positions_on_user_id"
  end

  create_table "recruiter_skills", force: :cascade do |t|
    t.bigint "recruiter_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recruiter_id"], name: "index_recruiter_skills_on_recruiter_id"
    t.index ["skill_id"], name: "index_recruiter_skills_on_skill_id"
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "first_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "candidate_skills", "candidates"
  add_foreign_key "candidate_skills", "skills"
  add_foreign_key "candidates", "positions"
  add_foreign_key "interviews", "candidates"
  add_foreign_key "interviews", "recruiters"
  add_foreign_key "position_skills", "positions"
  add_foreign_key "position_skills", "skills"
  add_foreign_key "positions", "users"
  add_foreign_key "recruiter_skills", "recruiters"
  add_foreign_key "recruiter_skills", "skills"
end
