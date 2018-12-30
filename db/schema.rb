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

ActiveRecord::Schema.define(version: 20181230204705) do

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.text     "question"
    t.string   "answer"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "last",       default: false
    t.text     "hint"
    t.string   "select1"
    t.string   "select2"
    t.string   "select3"
    t.string   "select4"
  end

  create_table "requests", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.string   "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer  "quiz_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                   default: "", null: false
    t.string   "encrypted_password",      default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "token"
    t.time     "current_sign_in_at"
    t.time     "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.integer  "exp",                     default: 0
    t.integer  "level"
    t.boolean  "admin"
    t.string   "user_image"
    t.binary   "image_data"
    t.string   "user_image_content_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
