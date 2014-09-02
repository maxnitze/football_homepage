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

ActiveRecord::Schema.define(version: 20140902220809) do

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "officestreet"
    t.string   "officepostalcode"
    t.string   "officetown"
    t.string   "stadiumstreet"
    t.string   "stadiumpostalcode"
    t.string   "stadiumtown"
    t.string   "homepage"
    t.string   "crest"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coaches", force: true do |t|
    t.string   "surname"
    t.string   "givenname"
    t.datetime "birthday"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identities", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "league_team_players", force: true do |t|
    t.integer  "team_id"
    t.integer  "league_id"
    t.integer  "player_id"
    t.integer  "position"
    t.boolean  "ex"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "league_teams", force: true do |t|
    t.integer  "league_id"
    t.integer  "team_id"
    t.string   "picture"
    t.string   "picturecaption"
    t.integer  "squadleague_id"
    t.boolean  "unsubscribed"
    t.integer  "wincount"
    t.integer  "losecount"
    t.integer  "remiscount"
    t.integer  "goalsshot"
    t.integer  "goalsgot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.integer  "class_id"
    t.boolean  "iscup"
    t.boolean  "isfemale"
    t.boolean  "noreferee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "match_players", force: true do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.integer  "position"
    t.integer  "backnumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.integer  "league_id"
    t.integer  "matchday"
    t.integer  "home_id"
    t.integer  "guest_id"
    t.datetime "start"
    t.datetime "end"
    t.integer  "goals_home"
    t.integer  "goals_guest"
    t.integer  "referee_id"
    t.integer  "assistant1_id"
    t.integer  "assistant2_id"
    t.boolean  "overtime"
    t.boolean  "penalty"
    t.boolean  "hncompete"
    t.boolean  "gncompete"
    t.boolean  "noreferee"
    t.boolean  "canceled"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "surname"
    t.string   "givenname"
    t.datetime "birthday"
    t.string   "picture"
    t.integer  "position"
    t.integer  "leg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referees", force: true do |t|
    t.string   "surname"
    t.string   "givenname"
    t.integer  "clubid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.boolean  "ishometeam"
    t.string   "hometeamname"
    t.boolean  "isfemale"
    t.integer  "class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "givenname"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
