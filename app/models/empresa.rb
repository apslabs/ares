# == Schema Information
# Schema version: 20110512124317
#
# Table name: empresas
#
#  id              :integer         not null, primary key
#  detalle         :string(255)
#  cuit            :string(255)
#  direccion       :string(255)
#  telefono        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  default_company :boolean
#

class Empresa < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :clientes
end
