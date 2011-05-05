class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :detalle
      t.string :cuit
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
