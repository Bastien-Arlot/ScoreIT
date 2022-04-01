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

ActiveRecord::Schema.define(version: 2022_04_01_132957) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "answer_finances", force: :cascade do |t|
    t.integer "answer_finance_1"
    t.integer "answer_finance_2"
    t.integer "answer_finance_3"
    t.integer "answer_finance_4"
    t.integer "answer_finance_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_finance_id"
    t.index ["category_finance_id"], name: "index_answer_finances_on_category_finance_id"
  end

  create_table "answer_innovations", force: :cascade do |t|
    t.integer "answer_innovation_1"
    t.integer "answer_innovation_2"
    t.integer "answer_innovation_3"
    t.integer "answer_innovation_4"
    t.integer "answer_innovation_5"
    t.integer "answer_innovation_6"
    t.integer "answer_innovation_7"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_innovation_id"
    t.index ["category_innovation_id"], name: "index_answer_innovations_on_category_innovation_id"
  end

  create_table "answer_markets", force: :cascade do |t|
    t.integer "answer_market_1"
    t.integer "answer_market_2"
    t.integer "answer_market_3"
    t.integer "answer_market_4"
    t.integer "answer_market_5"
    t.integer "answer_market_6"
    t.integer "answer_market_7"
    t.integer "answer_market_8"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_market_id"
    t.index ["category_market_id"], name: "index_answer_markets_on_category_market_id"
  end

  create_table "answer_offers", force: :cascade do |t|
    t.integer "answer_offer_1"
    t.integer "answer_offer_2"
    t.integer "answer_offer_3"
    t.integer "answer_offer_4"
    t.integer "answer_offer_5"
    t.integer "answer_offer_6"
    t.integer "answer_offer_7"
    t.integer "answer_offer_8"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_offer_id"
    t.index ["category_offer_id"], name: "index_answer_offers_on_category_offer_id"
  end

  create_table "answer_strategies", force: :cascade do |t|
    t.integer "answer_strategy_1"
    t.integer "answer_strategy_2"
    t.integer "answer_strategy_3"
    t.integer "answer_strategy_4"
    t.integer "answer_strategy_5"
    t.integer "answer_strategy_6"
    t.integer "answer_strategy_7"
    t.integer "answer_strategy_8"
    t.integer "answer_strategy_9"
    t.integer "answer_strategy_10"
    t.integer "answer_strategy_11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_strategy_id"
    t.index ["category_strategy_id"], name: "index_answer_strategies_on_category_strategy_id"
  end

  create_table "answer_teams", force: :cascade do |t|
    t.integer "answer_team_1"
    t.integer "answer_team_2"
    t.integer "answer_team_3"
    t.integer "answer_team_4"
    t.integer "answer_team_5"
    t.integer "answer_team_6"
    t.integer "answer_team_7"
    t.integer "answer_team_8"
    t.integer "answer_team_9"
    t.integer "answer_team_10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_team_id"
    t.index ["category_team_id"], name: "index_answer_teams_on_category_team_id"
  end

  create_table "category_finances", force: :cascade do |t|
    t.integer "total_rate_finance"
    t.integer "max_rate_finance"
    t.integer "total_100_finance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "score_id"
    t.index ["score_id"], name: "index_category_finances_on_score_id"
  end

  create_table "category_innovations", force: :cascade do |t|
    t.integer "total_rate_innovation"
    t.integer "max_rate_innovation"
    t.integer "total_100_innovation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "score_id"
    t.index ["score_id"], name: "index_category_innovations_on_score_id"
  end

  create_table "category_markets", force: :cascade do |t|
    t.integer "total_rate_market"
    t.integer "max_rate_market"
    t.integer "total_100_market"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "score_id"
    t.index ["score_id"], name: "index_category_markets_on_score_id"
  end

  create_table "category_offers", force: :cascade do |t|
    t.integer "total_rate_offer"
    t.integer "max_rate_offer"
    t.integer "total_100_offer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "score_id"
    t.index ["score_id"], name: "index_category_offers_on_score_id"
  end

  create_table "category_strategies", force: :cascade do |t|
    t.integer "total_rate_strategy"
    t.integer "max_rate_strategy"
    t.integer "total_100_strategy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "score_id"
    t.index ["score_id"], name: "index_category_strategies_on_score_id"
  end

  create_table "category_teams", force: :cascade do |t|
    t.integer "total_rate_team"
    t.integer "max_rate_team"
    t.integer "total_100_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "score_id"
    t.index ["score_id"], name: "index_category_teams_on_score_id"
  end

  create_table "order_timers", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "startup_id"
    t.index ["startup_id"], name: "index_order_timers_on_startup_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "startup_id"
    t.index ["startup_id"], name: "index_orders_on_startup_id"
  end

  create_table "scores", force: :cascade do |t|
    t.string "name"
    t.integer "total"
    t.integer "total_max"
    t.integer "total_100"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "startup_id"
    t.string "certificatenumber"
    t.boolean "isbuy", default: false
    t.index ["startup_id"], name: "index_scores_on_startup_id"
  end

  create_table "startups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.boolean "havecredit", default: false
    t.index ["user_id"], name: "index_startups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "facebook_id"
    t.string "github_id"
    t.string "google_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin", default: false
    t.string "slug"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answer_finances", "category_finances"
  add_foreign_key "answer_innovations", "category_innovations"
  add_foreign_key "answer_markets", "category_markets"
  add_foreign_key "answer_offers", "category_offers"
  add_foreign_key "answer_strategies", "category_strategies"
  add_foreign_key "answer_teams", "category_teams"
  add_foreign_key "category_finances", "scores"
  add_foreign_key "category_innovations", "scores"
  add_foreign_key "category_markets", "scores"
  add_foreign_key "category_offers", "scores"
  add_foreign_key "category_strategies", "scores"
  add_foreign_key "category_teams", "scores"
  add_foreign_key "order_timers", "startups"
  add_foreign_key "orders", "startups"
  add_foreign_key "scores", "startups"
  add_foreign_key "startups", "users"
end
