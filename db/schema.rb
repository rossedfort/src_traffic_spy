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

ActiveRecord::Schema.define(version: 20151022164629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payloads", force: :cascade do |t|
    t.string   "url"
    t.datetime "requested_at"
    t.integer  "responded_in"
    t.string   "referred_by"
    t.string   "request_type"
    t.string   "parameters"
    t.string   "event_name"
    t.string   "user_agent"
    t.string   "resolution_width"
    t.string   "resolution_height"
    t.string   "ip"
    t.string   "unique_hash"
    t.integer  "source_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "identifier"
    t.string "root_url"
  end

end
