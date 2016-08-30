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

ActiveRecord::Schema.define(version: 20160830213633) do

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubs", force: :cascade do |t|
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

  create_table "clubs_teams", id: false, force: :cascade do |t|
    t.integer "club_id"
    t.integer "team_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "surname"
    t.string   "givenname"
    t.datetime "birthday"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "league_team_players", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "league_id"
    t.integer  "player_id"
    t.integer  "position"
    t.boolean  "ex"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "league_teams", force: :cascade do |t|
    t.integer  "league_id"
    t.integer  "team_id"
    t.string   "picturecaption"
    t.integer  "squadleagueteam_id"
    t.boolean  "unsubscribed"
    t.integer  "wincount"
    t.integer  "losecount"
    t.integer  "remiscount"
    t.integer  "goalsshot"
    t.integer  "goalsgot"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "leagues", force: :cascade do |t|
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

  create_table "match_players", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.integer  "position"
    t.integer  "backnumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "league_id"
    t.integer  "matchday"
    t.integer  "home_id"
    t.integer  "guest_id"
    t.datetime "start"
    t.datetime "end"
    t.integer  "goals_home"
    t.integer  "goals_guest"
    t.integer  "goals_home_ht"
    t.integer  "goals_guest_ht"
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

  create_table "news", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "editor_id"
    t.integer  "edit_count", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_comments", force: :cascade do |t|
    t.integer  "news_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.datetime "created"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newstexts", force: :cascade do |t|
    t.integer  "news_id"
    t.string   "language",                null: false
    t.string   "title",                   null: false
    t.string   "subtitle",   default: "", null: false
    t.string   "abstract",   default: "", null: false
    t.string   "text",       default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "surname"
    t.string   "givenname"
    t.datetime "birthday"
    t.integer  "position"
    t.integer  "leg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "portrait_file_name"
    t.string   "portrait_content_type"
    t.integer  "portrait_file_size"
    t.datetime "portrait_updated_at"
  end

  create_table "referees", force: :cascade do |t|
    t.string   "surname"
    t.string   "givenname"
    t.integer  "club_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "birthday"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.boolean  "ishometeam"
    t.string   "hometeamname"
    t.boolean  "isfemale"
    t.integer  "class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_role_permissions", force: :cascade do |t|
    t.string   "symbol"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_role_permissions_roles", force: :cascade do |t|
    t.integer  "user_role_id"
    t.integer  "user_role_permission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "symbol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "user_role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "locale"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
