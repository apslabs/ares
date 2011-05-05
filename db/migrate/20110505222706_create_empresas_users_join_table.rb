class CreateEmpresasUsersJoinTable < ActiveRecord::Migration
  def self.up
    create_table :empresas_users, :id => false do |t|
      t.integer :empresa_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :empresas_users
  end
end