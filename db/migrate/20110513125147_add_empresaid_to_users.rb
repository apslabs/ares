class AddEmpresaidToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :empresa_id, :integer
  end

  def self.down
    remove_column :users, :empresa_id
  end
end
