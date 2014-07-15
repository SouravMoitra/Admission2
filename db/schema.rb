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

ActiveRecord::Schema.define(version: 20140715104438) do

  create_table "academics", force: true do |t|
    t.integer  "user_id"
    t.integer  "tenth_roll",                                   default: 0
    t.integer  "tenth_year_pass",                              default: 2000
    t.decimal  "tenth_marks_percent", precision: 10, scale: 2, default: 40.0
    t.string   "tenth_board"
    t.integer  "hs_roll",                                      default: 0
    t.integer  "hs_year_pass",                                 default: 2002
    t.decimal  "hs_marks_percent",    precision: 10, scale: 2, default: 40.0
    t.string   "hs_board"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "calculated_marks"
    t.string   "sub1"
    t.integer  "sub1_marks"
    t.string   "sub2"
    t.integer  "sub2_marks"
    t.string   "sub3"
    t.integer  "sub3_marks"
    t.string   "sub4"
    t.integer  "sub4_marks"
    t.string   "sub5"
    t.integer  "sub5_marks"
    t.string   "sub6"
    t.integer  "sub6_marks"
    t.string   "sub7"
    t.integer  "sub7_marks"
    t.string   "sub8"
    t.integer  "sub8_marks"
    t.string   "sub9"
    t.integer  "sub9_marks"
    t.string   "sub10"
    t.integer  "sub10_marks"
    t.integer  "subject_streams_id"
  end

  add_index "academics", ["user_id"], name: "index_academics_on_user_id", unique: true, using: :btree

  create_table "applications", force: true do |t|
    t.integer  "user_id"
    t.integer  "stream_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "verified",   default: false
  end

  add_index "applications", ["user_id"], name: "index_applications_on_user_id", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cutoffs", force: true do |t|
    t.integer  "stream_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cutoff_marks"
  end

  add_index "cutoffs", ["stream_id"], name: "index_cutoffs_on_stream_id", using: :btree

  create_table "personals", force: true do |t|
    t.integer  "user_id"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "fathers_name"
    t.string   "mothers_name"
    t.text     "address_present"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "category_id"
    t.string   "image"
    t.string   "avatar"
  end

  add_index "personals", ["user_id"], name: "index_personals_on_user_id", unique: true, using: :btree

  create_table "ranks", force: true do |t|
    t.integer  "user_id"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ranks", ["user_id"], name: "index_ranks_on_user_id", unique: true, using: :btree

  create_table "registers", force: true do |t|
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_captcha_data", force: true do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key", using: :btree

  create_table "streams", force: true do |t|
    t.string   "stream"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seats"
    t.integer  "subject_stream_id"
  end

  add_index "streams", ["subject_stream_id"], name: "index_streams_on_subject_stream_id", using: :btree

  create_table "subject_streams", force: true do |t|
    t.string   "subject_stream"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level",                  default: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "academics", "users", name: "academics_user_id_fk"

  add_foreign_key "applications", "users", name: "applications_user_id_fk"

  add_foreign_key "cutoffs", "streams", name: "cutoffs_stream_id_fk"

  add_foreign_key "personals", "users", name: "personals_user_id_fk"

  add_foreign_key "ranks", "users", name: "ranks_user_id_fk"

  add_foreign_key "streams", "subject_streams", name: "streams_subject_stream_id_fk"

end
