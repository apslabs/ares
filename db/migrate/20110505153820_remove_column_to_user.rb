class RemoveColumnToUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :empresa_id
  end

  def self.down
    add_column :users, :empresa_id, :integer
  end
end
