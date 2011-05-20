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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110520163928) do

  create_table "accounts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "codigo"
    t.string   "razonsocial"
    t.string   "cuit"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "contacto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "condicioniva_id"
    t.integer  "empresa_id"
  end

  create_table "comprobantes", :force => true do |t|
    t.integer  "cliente_id"
    t.string   "type"
    t.date     "fecha"
    t.decimal  "importe"
    t.integer  "numero"
    t.date     "fechavto"
    t.date     "printed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "condicionivas", :force => true do |t|
    t.string   "detalle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "letra"
  end

  create_table "detalles", :force => true do |t|
    t.integer  "detallable_id"
    t.string   "detallable_type"
    t.string   "descripcion"
    t.decimal  "cantidad"
    t.decimal  "preciounitario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "tasaiva"
  end

  create_table "empresas", :force => true do |t|
    t.string   "detalle"
    t.string   "cuit"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "default_company"
  end

  create_table "empresas_users", :id => false, :force => true do |t|
    t.integer "empresa_id"
    t.integer "user_id"
  end

  create_table "facturadetalles", :force => true do |t|
    t.integer  "factura_id"
    t.string   "descripcion"
    t.decimal  "cantidad"
    t.decimal  "preciounitario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "tasaiva"
  end

  create_table "facturanotacreditos", :force => true do |t|
    t.integer  "factura_id"
    t.date     "fecha"
    t.decimal  "importe"
    t.integer  "notacredito_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturarecibos", :force => true do |t|
    t.integer  "factura_id"
    t.date     "fecha"
    t.decimal  "importe"
    t.integer  "recibo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturas", :force => true do |t|
    t.integer  "cliente_id"
    t.date     "fecha"
    t.integer  "numero"
    t.date     "fechavto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "isprinted"
  end

  create_table "notacreditos", :force => true do |t|
    t.integer  "cliente_id"
    t.date     "fecha"
    t.decimal  "importe"
    t.integer  "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recibos", :force => true do |t|
    t.integer  "cliente_id"
    t.date     "fecha"
    t.decimal  "importe"
    t.integer  "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rols", :force => true do |t|
    t.string   "detalle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasaivas", :force => true do |t|
    t.string   "detalle"
    t.decimal  "porcentaje"
    t.date     "vencimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "memberships"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
