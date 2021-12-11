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

ActiveRecord::Schema.define(version: 2021_12_10_023732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exames", force: :cascade do |t|
    t.string "nome"
    t.string "tipo_exame"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "laboratorio_item_id"
    t.bigint "laboratorio_id"
    t.integer "exame_tipo"
    t.integer "exame_state"
    t.index ["laboratorio_id"], name: "index_exames_on_laboratorio_id"
    t.index ["laboratorio_item_id"], name: "index_exames_on_laboratorio_item_id"
  end

  create_table "group_labs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_state"
    t.integer "group_tipo"
  end

  create_table "laboratorio_items", force: :cascade do |t|
    t.bigint "group_lab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_lab_id"], name: "index_laboratorio_items_on_group_lab_id"
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "rua"
    t.string "bairro"
    t.string "logradouro"
    t.integer "numero"
    t.string "complemento"
    t.string "cep"
    t.string "cidade"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lab_state"
    t.integer "exame_state"
  end

  create_table "seed_migration_data_migrations", id: :serial, force: :cascade do |t|
    t.string "version"
    t.integer "runtime"
    t.datetime "migrated_on"
  end

  add_foreign_key "exames", "laboratorio_items"
  add_foreign_key "exames", "laboratorios"
  add_foreign_key "laboratorio_items", "group_labs"
end
