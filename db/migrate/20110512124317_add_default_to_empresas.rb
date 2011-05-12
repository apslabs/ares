class AddDefaultToEmpresas < ActiveRecord::Migration
  def self.up
    add_column :empresas, :default_company, :boolean
  end

  def self.down
    remove_column :empresas, :default_company
  end
end
