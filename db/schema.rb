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

ActiveRecord::Schema.define(version: 20180709142750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "link_tag_joins", force: :cascade do |t|
    t.integer "link_id"
    t.integer "tag_id"
    t.boolean "user_deactivation", default: false
    t.boolean "admin_deactivation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.string "url"
    t.boolean "admin_deactivation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_comments", force: :cascade do |t|
    t.integer "review_id"
    t.integer "review_commenter_id"
    t.text "content"
    t.boolean "user_deactivation", default: false
    t.boolean "admin_deactivation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "reviewer_id"
    t.integer "link_id"
    t.integer "user_share_id"
    t.text "content"
    t.integer "rating"
    t.boolean "user_deactivation", default: false
    t.boolean "admin_deactivation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_comments", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "tag_commenter_id"
    t.text "content"
    t.boolean "user_deactivation", default: false
    t.boolean "admin_deactivation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.boolean "admin_deactivation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_share_tag_joins", force: :cascade do |t|
    t.integer "user_share_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_shares", force: :cascade do |t|
    t.integer "user_id"
    t.integer "review_id"
    t.integer "link_id"
    t.boolean "user_deactivation", default: false
    t.boolean "admin_deactivation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.boolean "user_deactivation", default: false
    t.boolean "admin_deactivation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "review_id"
    t.integer "user_id"
    t.boolean "helpful"
    t.boolean "funny"
  end

end
