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

ActiveRecord::Schema.define(version: 20170526164435) do

  create_table "games", force: :cascade do |t|
    t.integer  "team_a_id"
    t.integer  "team_b_id"
    t.integer  "team_a_score"
    t.integer  "team_b_score"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "team_a_tossup"
    t.integer  "team_a_penalty"
    t.integer  "team_a_bonus"
    t.integer  "team_b_tossup"
    t.integer  "team_b_penalty"
    t.integer  "team_b_bonus"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "schools", force: :cascade do |t|
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
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "region_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_schools_on_email", unique: true
    t.index ["reset_password_token"], name: "index_schools_on_reset_password_token", unique: true
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "tournament_id"
    t.string   "player_1_name"
    t.string   "player_2_name"
    t.string   "player_3_name"
    t.string   "player_4_name"
    t.string   "player_5_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
