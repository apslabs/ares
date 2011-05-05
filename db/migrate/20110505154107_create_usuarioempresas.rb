class CreateUsuarioempresas < ActiveRecord::Migration
  def self.up
    create_table :usuarioempresas do |t|
      t.integer :user_id
      t.integer :empresa_id

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarioempresas
  end
end
