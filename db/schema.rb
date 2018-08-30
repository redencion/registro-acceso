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

ActiveRecord::Schema.define(version: 0) do

  create_table "Acceso", primary_key: "acceso_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.timestamp "fecha_entrada", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "fecha_salida", default: "2000-01-01 00:00:00", null: false
  end

  create_table "Organizacion", primary_key: "organizacion_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.timestamp "fecha_registro", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.boolean "estatus", default: true, null: false
    t.index ["nombre"], name: "nombre", unique: true
  end

  create_table "Persona", primary_key: "persona_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "organizacion_id", null: false
    t.string "cedula", limit: 20, null: false
    t.string "nombre", limit: 100, null: false
    t.string "apellido", limit: 100, null: false
    t.string "credencial", limit: 100, null: false
    t.timestamp "fecha_registro", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.boolean "estatus", default: true, null: false
    t.index ["cedula"], name: "cedula", unique: true
    t.index ["credencial"], name: "credencial", unique: true
    t.index ["organizacion_id"], name: "organizacion_id"
  end

  create_table "Usuario", primary_key: "usuario_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "persona_id", null: false
    t.string "nombre", limit: 100, null: false
    t.string "pass", limit: 100, null: false
    t.timestamp "fecha_registro", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.boolean "estatus", default: true, null: false
    t.index ["nombre"], name: "nombre", unique: true
    t.index ["persona_id"], name: "persona_id"
  end

  add_foreign_key "Persona", "Organizacion", column: "organizacion_id", primary_key: "organizacion_id", name: "Persona_ibfk_1"
  add_foreign_key "Usuario", "Persona", column: "persona_id", primary_key: "persona_id", name: "Usuario_ibfk_1"
end
