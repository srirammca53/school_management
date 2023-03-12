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

ActiveRecord::Schema.define(version: 20230312151157) do

  create_table "batches", force: :cascade do |t|
    t.integer "number"
    t.date "start_date"
    t.date "end_date"
    t.time "timee"
    t.string "user_id"
    t.integer "institute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "student_id"
    t.index ["institute_id"], name: "index_batches_on_institute_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "version"
    t.float "fee"
    t.integer "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_courses_on_batch_id"
  end

  create_table "fees", force: :cascade do |t|
    t.string "user_id"
    t.string "batch_id"
    t.string "course_id"
    t.boolean "total_fee_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutes", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "city"
    t.string "email"
    t.string "website"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_institutes_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "phone"
    t.string "city"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
