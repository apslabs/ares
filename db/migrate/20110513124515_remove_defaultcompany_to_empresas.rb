class RemoveDefaultcompanyToEmpresas < ActiveRecord::Migration
  def self.up
    remove_column :empresas, :Default_company
  end

  def self.down
    add_column :empresas, :Default_company, :boolean
  end
end
