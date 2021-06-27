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

ActiveRecord::Schema.define(version: 2021_06_26_104809) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "board_comments", force: :cascade do |t|
    t.string "comment_content"
    t.integer "customer_id"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_board_comments_on_board_id"
    t.index ["customer_id"], name: "index_board_comments_on_customer_id"
  end

  create_table "boards", force: :cascade do |t|
    t.integer "customer_id"
    t.string "title"
    t.text "sentence"
    t.integer "comment_id"
    t.text "board_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "time"
  end

  create_table "comment_mains", force: :cascade do |t|
    t.string "comment_content"
    t.integer "customer_id"
    t.integer "main_content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_comment_mains_on_customer_id"
    t.index ["main_content_id"], name: "index_comment_mains_on_main_content_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.integer "admin_id"
    t.string "festival"
    t.string "place"
    t.string "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer "customer_id"
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "main_content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_comments", force: :cascade do |t|
    t.string "comment_content"
    t.integer "customer_id"
    t.integer "main_content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_main_comments_on_customer_id"
    t.index ["main_content_id"], name: "index_main_comments_on_main_content_id"
  end

  create_table "main_contents", force: :cascade do |t|
    t.integer "admin_id"
    t.string "facility"
    t.string "time"
    t.text "appeal"
    t.string "fee"
    t.string "address"
    t.string "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mains", force: :cascade do |t|
    t.integer "admin_id"
    t.string "facility"
    t.string "time"
    t.text "appeal"
    t.string "fee"
    t.string "address"
    t.string "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
