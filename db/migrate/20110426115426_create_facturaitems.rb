class CreateFacturaitems < ActiveRecord::Migration
  def self.up
    create_table :facturaitems do |t|
      t.references :factura
      t.decimal :cantidad
      t.decimal :preciounitario
      t.text :descripcion
      t.decimal :tasaiva

      t.timestamps
    end
  end

  def self.down
    drop_table :facturaitems
  end
end
