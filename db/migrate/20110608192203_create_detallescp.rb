class CreateDetallescp < ActiveRecord::Migration
  def self.up
    create_table :detallescp do |t|
      t.integer  "detallable_id"
      t.string   "detallable_type"
      t.string   "descripcion"
      t.decimal  "cantidad"
      t.decimal  "preciounitario"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.decimal  "tasaiva"
      t.timestamps
    end
  end

  def self.down
    drop_table :detallescp
  end
end
