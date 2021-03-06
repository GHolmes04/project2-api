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

ActiveRecord::Schema.define(version: 20150806173334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lesson_plans", force: :cascade do |t|
    t.string  "title"
    t.string  "content"
    t.string  "target_grade_level"
    t.integer "teacher_id"
    t.integer "subject_id"
  end

  add_index "lesson_plans", ["subject_id"], name: "index_lesson_plans_on_subject_id", using: :btree
  add_index "lesson_plans", ["teacher_id"], name: "index_lesson_plans_on_teacher_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "grade_level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "school_id"
    t.integer  "user_id"
  end

  add_index "teachers", ["school_id"], name: "index_teachers_on_school_id", using: :btree
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
