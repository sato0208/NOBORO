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

ActiveRecord::Schema.define(version: 2020_05_10_083628) do

  create_table "battles", force: :cascade do |t|
    t.integer "climber_id"
    t.integer "battler_id"
    t.boolean "is_valid_status", default: false, null: false
    t.datetime "finish_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battler_id"], name: "index_battles_on_battler_id"
    t.index ["climber_id", "battler_id"], name: "index_battles_on_climber_id_and_battler_id", unique: true
    t.index ["climber_id"], name: "index_battles_on_climber_id"
  end

  create_table "climbers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "post_code"
    t.string "address"
    t.string "profile_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "introduction"
    t.index ["email"], name: "index_climbers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_climbers_on_reset_password_token", unique: true
  end

  create_table "done_tasks", force: :cascade do |t|
    t.integer "climber_id"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "climber_id"
    t.integer "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["climber_id", "gym_id"], name: "index_favorites_on_climber_id_and_gym_id", unique: true
    t.index ["climber_id"], name: "index_favorites_on_climber_id"
    t.index ["gym_id"], name: "index_favorites_on_gym_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre_image_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "grade"
    t.string "trophy_name"
    t.string "trophy_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gyms", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "genre_id"
    t.text "description"
    t.string "gym_name"
    t.string "post_code"
    t.string "address"
    t.string "phone_number"
    t.text "gym_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gym_image_id"
    t.index ["email"], name: "index_gyms_on_email", unique: true
    t.index ["reset_password_token"], name: "index_gyms_on_reset_password_token", unique: true
  end

  create_table "infos", force: :cascade do |t|
    t.integer "gym_id"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "visiter_id"
    t.integer "visited_id"
    t.integer "confirm_status"
    t.boolean "is_checked_status", default: false, null: false
    t.integer "battle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["visited_id"], name: "index_notifications_on_visited_id"
    t.index ["visiter_id", "visited_id"], name: "index_notifications_on_visiter_id_and_visited_id", unique: true
    t.index ["visiter_id"], name: "index_notifications_on_visiter_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "climber_id"
    t.integer "follow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["climber_id", "follow_id"], name: "index_relationships_on_climber_id_and_follow_id", unique: true
    t.index ["climber_id"], name: "index_relationships_on_climber_id"
    t.index ["follow_id"], name: "index_relationships_on_follow_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "gym_id"
    t.string "task_name"
    t.integer "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trophies", force: :cascade do |t|
    t.integer "climber_id"
    t.string "my_trophy_name"
    t.string "my_trophy_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
