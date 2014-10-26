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

ActiveRecord::Schema.define(version: 20141026211204) do

  create_table "ambientes", force: true do |t|
    t.string   "ambiente"
    t.integer  "sistema_domotico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ambientes", ["sistema_domotico_id"], name: "index_ambientes_on_sistema_domotico_id"

  create_table "elementos", force: true do |t|
    t.string   "elemento"
    t.string   "pinDeConexion"
    t.string   "estado"
    t.string   "valorDeEstado"
    t.integer  "ambiente_id"
    t.integer  "submodulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "elementos", ["ambiente_id"], name: "index_elementos_on_ambiente_id"
  add_index "elementos", ["submodulo_id"], name: "index_elementos_on_submodulo_id"

  create_table "sistemas_domotico", force: true do |t|
    t.string   "nombre"
    t.string   "ip"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submodulos", force: true do |t|
    t.string   "submodulo"
    t.string   "modelo"
    t.integer  "pinesDigitales"
    t.integer  "pinesAnalogicos"
    t.integer  "sistema_domotico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submodulos", ["sistema_domotico_id"], name: "index_submodulos_on_sistema_domotico_id"

end
