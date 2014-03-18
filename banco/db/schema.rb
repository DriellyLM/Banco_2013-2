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

ActiveRecord::Schema.define(version: 20140318040650) do

  create_table "contacorrentes", force: true do |t|
    t.string   "conta"
    t.string   "saldo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contapoupancas", force: true do |t|
    t.string   "sequencial"
    t.string   "saldo"
    t.integer  "contacorrente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contapoupancas", ["contacorrente_id"], name: "index_contapoupancas_on_contacorrente_id"

  create_table "emprestimos", force: true do |t|
    t.string   "datacontrato"
    t.string   "valorcontratado"
    t.string   "numeroparcelas"
    t.integer  "contacorrente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emprestimos", ["contacorrente_id"], name: "index_emprestimos_on_contacorrente_id"

  create_table "pessoafisicas", force: true do |t|
    t.string   "nome"
    t.string   "datanascimento"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefone"
    t.string   "cpf"
    t.integer  "contacorrente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pessoafisicas", ["contacorrente_id"], name: "index_pessoafisicas_on_contacorrente_id"

end
