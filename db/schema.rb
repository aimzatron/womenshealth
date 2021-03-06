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

ActiveRecord::Schema.define(version: 20150325171453) do

  create_table "actions", force: true do |t|
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diary_entries", force: true do |t|
    t.string   "uuid"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feelings", force: true do |t|
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.string   "value"
    t.belongs_to "actions"
    t.belongs_to "feelings"
    t.belongs_to "reasons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reasons", force: true do |t|
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
