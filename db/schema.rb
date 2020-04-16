# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_08_172625) do

  create_table "draftlists", force: :cascade do |t|
    t.integer "team_id"
    t.integer "player_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "league_name"
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name"
    t.string "player_position"
    t.integer "price"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "user_id"
    t.integer "budget"
    t.integer "league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
  end

end
