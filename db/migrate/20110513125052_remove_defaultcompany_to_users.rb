class RemoveDefaultcompanyToUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :Default_company
  end

  def self.down
    add_column :users, :Default_company, :integer
  end
end
