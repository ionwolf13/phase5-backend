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

ActiveRecord::Schema.define(version: 2021_03_04_054022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.integer "instructor_id"
    t.string "assignment_name", default: "Pop Quiz"
    t.string "assignment_topic", default: "Home Work"
    t.integer "level_difficulty", default: 0
    t.integer "grade_level", default: 100
    t.float "score_average", default: 100.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.integer "school_id"
    t.integer "room_id"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "age"
    t.string "subject"
    t.string "username"
    t.string "email"
    t.string "email_confirmation"
    t.integer "phone_number", default: 339968
    t.string "password_digest"
    t.string "user_role", default: "instructor"
    t.string "hobbies", default: "Flat Iron"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "school_id"
    t.integer "room_number"
    t.string "subject"
    t.string "teacher"
    t.integer "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "campus_id", default: "XDY091"
    t.boolean "public", default: true
    t.string "principal", default: "FlatIron"
    t.string "concentration", default: "Technology"
    t.string "level_of_education", default: "High School"
    t.integer "classrooms", default: 20
    t.string "address", default: ""
    t.integer "phone", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_assignments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "assignment_id"
    t.integer "student_score", default: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_rooms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.integer "average_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "middle_name", default: ""
    t.string "last_name"
    t.integer "age"
    t.string "profile_image", default: ""
    t.string "student_school_number", default: "000000"
    t.integer "grade", default: 100
    t.float "gpa", default: 4.0
    t.string "email", default: ""
    t.string "email_confirmation"
    t.string "user_role", default: "student"
    t.string "password_digest"
    t.boolean "vaccination_document", default: false
    t.boolean "school_history_document", default: false
    t.string "code_of_conduct", default: "Excellent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
