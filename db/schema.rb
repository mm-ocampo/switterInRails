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

ActiveRecord::Schema.define(version: 20140502083127) do

  create_table "comments", force: true do |t|
    t.string   "comment"
    t.string   "username"
    t.integer  "to_swit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "swit_id"
  end

  create_table "sours", force: true do |t|
    t.integer  "swit_id"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sweets", force: true do |t|
    t.integer  "swit_id"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "swits", force: true do |t|
    t.string   "username"
    t.string   "swit"
    t.integer  "sweet_count"
    t.integer  "sour_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encryptedPassword"
    t.string   "salt"
    t.string   "password_confirmation"
    t.string   "oldpassword"
    t.string   "newpassword"
    t.string   "newpassword_confirmation"
  end

end
