class Usuarioempresa < ActiveRecord::Base
  belongs_to :users
  belongs_to :empresas
end
