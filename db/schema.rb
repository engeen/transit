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

ActiveRecord::Schema.define(version: 20170415201404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.integer  "job_id"
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_actors_on_job_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "source"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
  end

  create_table "replicas", force: :cascade do |t|
    t.string   "actor"
    t.text     "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "timestamp"
    t.integer  "job_id"
    t.index ["job_id"], name: "index_replicas_on_job_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_results_on_job_id", using: :btree
  end

  add_foreign_key "actors", "jobs"
  add_foreign_key "replicas", "jobs"
  add_foreign_key "results", "jobs"
end
