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

ActiveRecord::Schema.define(version: 2019_02_21_083837) do

  create_table "buys", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datos_estudiantes", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "carrera"
    t.string "carnet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "carrera"
    t.string "carnet"
    t.date "nacimiento"
    t.integer "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.boolean "programador"
    t.date "birthday"
    t.time "work_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
