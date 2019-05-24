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

ActiveRecord::Schema.define(version: 2019_05_22_135155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "text"
    t.string "date"
    t.date "precise_date"
    t.integer "likes", default: 0
    t.bigint "sub_comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["sub_comment_id"], name: "index_answers_on_sub_comment_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "article_sub_categories", force: :cascade do |t|
    t.bigint "sub_category_id"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_sub_categories_on_article_id"
    t.index ["sub_category_id"], name: "index_article_sub_categories_on_sub_category_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "URL"
    t.string "description"
    t.integer "upvotes", default: 0
    t.integer "fake_news"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.string "image"
    t.string "title"
    t.string "source"
    t.text "site_description"
    t.string "date"
    t.date "precise_date"
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "by_user_comment_upvotes", force: :cascade do |t|
    t.integer "user_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_by_user_comment_upvotes_on_comment_id"
  end

  create_table "by_user_upvotes", force: :cascade do |t|
    t.string "user_first_name"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_by_user_upvotes_on_article_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_articles", force: :cascade do |t|
    t.text "text"
    t.string "date"
    t.date "precise_date"
    t.integer "likes", default: 0
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["article_id"], name: "index_comment_articles_on_article_id"
    t.index ["user_id"], name: "index_comment_articles_on_user_id"
  end

  create_table "comment_sub_categories", force: :cascade do |t|
    t.bigint "sub_category_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comment_sub_categories_on_comment_id"
    t.index ["sub_category_id"], name: "index_comment_sub_categories_on_sub_category_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.text "source"
    t.integer "upvotes", default: 0
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date"
    t.date "precise_date"
    t.bigint "category_id"
    t.boolean "open_or_close"
    t.index ["category_id"], name: "index_comments_on_category_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "sub_comments", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.text "source"
    t.integer "stars", default: 0
    t.string "date"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "state", default: "neutre"
    t.index ["comment_id"], name: "index_sub_comments_on_comment_id"
    t.index ["user_id"], name: "index_sub_comments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "pseudo"
    t.integer "age"
    t.string "activity"
    t.string "photo"
    t.string "photo_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

  add_foreign_key "answers", "sub_comments"
  add_foreign_key "answers", "users"
  add_foreign_key "article_sub_categories", "articles"
  add_foreign_key "article_sub_categories", "sub_categories"
  add_foreign_key "articles", "categories"
  add_foreign_key "articles", "users"
  add_foreign_key "by_user_comment_upvotes", "comments"
  add_foreign_key "by_user_upvotes", "articles"
  add_foreign_key "comment_articles", "articles"
  add_foreign_key "comment_articles", "users"
  add_foreign_key "comment_sub_categories", "comments"
  add_foreign_key "comment_sub_categories", "sub_categories"
  add_foreign_key "comments", "categories"
  add_foreign_key "comments", "users"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "sub_comments", "comments"
  add_foreign_key "sub_comments", "users"
end
