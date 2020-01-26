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

ActiveRecord::Schema.define(version: 2020_01_26_170354) do

  create_table "people", force: :cascade do |t|
    t.string "nome"
    t.string "nascimento"
    t.string "endereco"
    t.string "mae"
    t.string "pai"
    t.boolean "mora_com_pais"
    t.string "mora_com_quem"
    t.integer "integrantes_familia"
    t.float "renda_familiar"
    t.boolean "casa_alugada"
    t.boolean "estuda"
    t.string "escolaridade"
    t.boolean "tempo_integral"
    t.boolean "escola_alimentacao"
    t.boolean "biblioteca"
    t.boolean "laboratorio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
