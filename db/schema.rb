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

ActiveRecord::Schema.define(version: 20170915033303) do

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "bookname"
    t.text "summary"
    t.string "pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classnames", force: :cascade do |t|
    t.string "classname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cshes", force: :cascade do |t|
    t.string "area"
    t.string "school"
    t.integer "sit_no"
    t.string "grade"
    t.string "c_name"
    t.string "s_no"
    t.string "name"
    t.string "sex"
    t.integer "score"
    t.string "pj"
    t.string "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "idcode_id"
    t.string "bookname"
    t.text "bookreport"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idcode_id"], name: "index_reports_on_idcode_id"
  end

  create_table "sexes", force: :cascade do |t|
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "idcard"
    t.string "name"
    t.integer "grade_id"
    t.integer "classname_id"
    t.integer "sitno"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classname_id"], name: "index_students_on_classname_id"
    t.index ["grade_id"], name: "index_students_on_grade_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "idcode"
    t.string "username"
    t.string "email"
    t.string "grade"
    t.string "classname"
    t.string "sex"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
