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

ActiveRecord::Schema.define(version: 20160823094219) do

  create_table "articles", force: :cascade do |t|
    t.string   "slug"
    t.string   "thumbnail"
    t.string   "title"
    t.string   "tags"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "slug"
    t.string   "thumbnail"
    t.string   "title_en"
    t.string   "title_nb"
    t.string   "description_en"
    t.string   "description_nb"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "heros", force: :cascade do |t|
    t.string   "video"
    t.string   "image"
    t.string   "title_en"
    t.string   "title_nb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "slug"
    t.string   "thubmnail"
    t.string   "title_en"
    t.string   "title_nb"
    t.string   "description_en"
    t.string   "description_nb"
    t.string   "tags"
    t.string   "tips_en"
    t.string   "tips_nb"
    t.string   "benefits_en"
    t.string   "benefits_nb"
    t.boolean  "featured"
    t.integer  "categories_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["categories_id"], name: "index_products_on_categories_id"
  end

  create_table "stockists", force: :cascade do |t|
    t.string   "slug"
    t.string   "title"
    t.string   "address"
    t.integer  "lat"
    t.integer  "lng"
    t.string   "thubmnail"
    t.string   "title_en"
    t.string   "title_nb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
