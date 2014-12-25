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

ActiveRecord::Schema.define(version: 3) do

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "location",   limit: 255
    t.integer  "present",    limit: 4,   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", force: :cascade do |t|
    t.integer  "group_id",     limit: 4
    t.string   "type",         limit: 255
    t.string   "name",         limit: 255
    t.string   "race_align",   limit: 255
    t.integer  "level",        limit: 4,     default: 1
    t.integer  "max_hp",       limit: 4,     default: 2
    t.integer  "hp",           limit: 4,     default: 2
    t.integer  "ac",           limit: 4,     default: 10
    t.text     "treasures",    limit: 65535
    t.text     "weapons",      limit: 65535
    t.text     "notes",        limit: 65535
    t.string   "player",       limit: 255
    t.string   "klass_option", limit: 255
    t.integer  "exp_needed",   limit: 4
    t.integer  "exp_pts",      limit: 4
    t.integer  "str",          limit: 4
    t.integer  "int",          limit: 4
    t.integer  "wiz",          limit: 4
    t.integer  "dex",          limit: 4
    t.integer  "cons",         limit: 4
    t.integer  "char",         limit: 4
    t.integer  "num_attacks",  limit: 4,     default: 1
    t.string   "damage",       limit: 255
    t.string   "size",         limit: 1,     default: "M"
    t.integer  "exp_value",    limit: 4,     default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", force: :cascade do |t|
    t.string  "name",   limit: 255
    t.integer "weight", limit: 4
    t.integer "speed",  limit: 4
    t.string  "medium", limit: 255
    t.string  "large",  limit: 255
  end

end
