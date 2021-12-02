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

ActiveRecord::Schema.define(version: 2021_12_02_223843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exames", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.integer "tipo"
  end

  create_table "laboratorio_exames", force: :cascade do |t|
    t.bigint "laboratorio_id"
    t.bigint "exame_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exame_id"], name: "index_laboratorio_exames_on_exame_id"
    t.index ["laboratorio_id"], name: "index_laboratorio_exames_on_laboratorio_id"
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "rua"
    t.string "bairro"
    t.string "logradouro"
    t.integer "numero"
    t.string "complemento"
    t.integer "cep"
    t.string "cidade"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "laboratorios_exames", force: :cascade do |t|
    t.bigint "laboratorio_id"
    t.bigint "exame_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exame_id"], name: "index_laboratorios_exames_on_exame_id"
    t.index ["laboratorio_id"], name: "index_laboratorios_exames_on_laboratorio_id"
  end

  add_foreign_key "laboratorio_exames", "exames"
  add_foreign_key "laboratorio_exames", "laboratorios"
  add_foreign_key "laboratorios_exames", "exames"
  add_foreign_key "laboratorios_exames", "laboratorios"
end
