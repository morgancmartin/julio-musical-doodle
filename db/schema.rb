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

ActiveRecord::Schema.define(version: 20160808155132) do

  create_table "employee_teams", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "employee_teams", ["employee_id"], name: "index_employee_teams_on_employee_id"
  add_index "employee_teams", ["team_id"], name: "index_employee_teams_on_team_id"

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owner_teams", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "owner_teams", ["employee_id"], name: "index_owner_teams_on_employee_id"
  add_index "owner_teams", ["team_id"], name: "index_owner_teams_on_team_id"

  create_table "progress_reports", force: :cascade do |t|
    t.text     "body"
    t.integer  "author_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "progress_reports", ["author_id"], name: "index_progress_reports_on_author_id"
  add_index "progress_reports", ["team_id"], name: "index_progress_reports_on_team_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
