class AddRolToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :rol_id, :integer
  end

  def self.down
    remove_column :users, :rol_id
  end
end
