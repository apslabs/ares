class CreateCondicionivas < ActiveRecord::Migration
  def self.up
    create_table :condicionivas do |t|
      t.string :detalle

      t.timestamps
    end
  end

  def self.down
    drop_table :condicionivas
  end
end
