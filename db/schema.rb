# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150804161428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lesson_plans", force: :cascade do |t|
    t.string  "title"
    t.string  "content"
    t.string  "target_grade_level"
    t.integer "teacher_id"
    t.integer "subject_id"
    t.integer "teachers_id"
    t.integer "subjects_id"
  end

  add_index "lesson_plans", ["subjects_id"], name: "index_lesson_plans_on_subjects_id", using: :btree
  add_index "lesson_plans", ["teachers_id"], name: "index_lesson_plans_on_teachers_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string  "name"
    t.string  "grade_level"
    t.integer "teacher_id"
    t.string  "type"
  end

  create_table "subjects", force: :cascade do |t|
    t.string  "english"
    t.string  "math"
    t.string  "science"
    t.string  "history"
    t.string  "social_studies"
    t.string  "foreign_languages"
    t.string  "technology"
    t.string  "pe"
    t.string  "art"
    t.string  "music"
    t.string  "other"
    t.integer "lesson_plan_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.integer  "school_id"
    t.integer  "lesson_plan_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "schools_id"
  end

  add_index "teachers", ["schools_id"], name: "index_teachers_on_schools_id", using: :btree
  add_index "teachers", ["user_id"], name: "index_teachers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "token",           null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "lesson_plans", "subjects"
  add_foreign_key "lesson_plans", "teachers"
  add_foreign_key "teachers", "schools"
  add_foreign_key "teachers", "users"
end
