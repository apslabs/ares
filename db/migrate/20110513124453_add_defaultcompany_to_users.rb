class AddDefaultcompanyToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :Default_company, :integer
  end

  def self.down
    remove_column :users, :Default_company
  end
end
