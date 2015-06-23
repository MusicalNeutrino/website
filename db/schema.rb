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

ActiveRecord::Schema.define(version: 20150622061922) do

  create_table "albums", force: :cascade do |t|
    t.string   "key",   limit: 255, null: false
    t.string   "title", limit: 255, null: false
    t.string   "cover", limit: 255, null: false
    t.datetime "date",              null: false
  end

  add_index "albums", ["key"], name: "index_albums_on_key", unique: true, using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "album_id",  limit: 4,   null: false
    t.string   "key",       limit: 255, null: false
    t.string   "original",  limit: 255, null: false
    t.string   "thumbnail", limit: 255, null: false
    t.datetime "date",                  null: false
  end

  add_index "photos", ["album_id", "key"], name: "index_photos_on_album_id_and_key", unique: true, using: :btree
  add_index "photos", ["album_id"], name: "index_photos_on_album_id", using: :btree

end
