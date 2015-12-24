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

ActiveRecord::Schema.define(version: 20151223224135) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id"
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.date     "fch_nacimiento"
    t.boolean  "genero"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "mail"
    t.integer  "municipio_id"
    t.string   "docIdentidad"
    t.integer  "tipo_doc_id"
    t.integer  "estado_civil_id"
    t.string   "tMovil"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "clientes", ["estado_civil_id"], name: "index_clientes_on_estado_civil_id"
  add_index "clientes", ["municipio_id"], name: "index_clientes_on_municipio_id"
  add_index "clientes", ["tipo_doc_id"], name: "index_clientes_on_tipo_doc_id"

  create_table "detalles", force: :cascade do |t|
    t.string   "nombre_pro"
    t.integer  "cantidad"
    t.float    "precio_u"
    t.float    "iva"
    t.float    "total_pre"
    t.float    "total_iva"
    t.integer  "factura_id"
    t.integer  "producto_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "vr_venta"
  end

  add_index "detalles", ["factura_id"], name: "index_detalles_on_factura_id"
  add_index "detalles", ["producto_id"], name: "index_detalles_on_producto_id"

  create_table "estado_civils", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.integer  "num_pago"
    t.date     "fecha"
    t.integer  "cliente_id"
    t.integer  "modo_pago_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "detalle_id"
  end

  add_index "facturas", ["cliente_id"], name: "index_facturas_on_cliente_id"
  add_index "facturas", ["detalle_id"], name: "index_facturas_on_detalle_id"
  add_index "facturas", ["modo_pago_id"], name: "index_facturas_on_modo_pago_id"

  create_table "modo_pagos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "otros_detalle"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.string   "nombre_departamento"
    t.string   "nombre_municipio"
    t.string   "nombre_centro_poblado"
    t.string   "nombre"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.float    "precio_uni"
    t.float    "stock"
    t.integer  "cantidad"
    t.integer  "category_id"
    t.string   "arch_file_name"
    t.string   "arch_content_type"
    t.integer  "arch_file_size"
    t.datetime "arch_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "productos", ["category_id"], name: "index_productos_on_category_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_docs", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
  end

end
