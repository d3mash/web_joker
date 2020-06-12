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

ActiveRecord::Schema.define(version: 2020_06_12_093348) do

  create_table "games", force: :cascade do |t|
    t.integer "players_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_games", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_player_games_on_game_id"
    t.index ["player_id"], name: "index_player_games_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turns", force: :cascade do |t|
    t.integer "turn_no"
    t.integer "expected"
    t.integer "actual"
    t.integer "player_id", null: false
    t.integer "player_game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_game_id"], name: "index_turns_on_player_game_id"
    t.index ["player_id"], name: "index_turns_on_player_id"
  end

  add_foreign_key "player_games", "games"
  add_foreign_key "player_games", "players"
  add_foreign_key "turns", "player_games"
  add_foreign_key "turns", "players"
end
