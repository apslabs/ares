# == Schema Information
# Schema version: 20110513124515
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

class Empresa < ActiveResource::Base
  #has_and_belongs_to_many :users
  #has_many :clientes
  
  #self.site = CUSTOM_PROVIDER_URL 
  #self.element_name = "company"
    
  #validate :cuit, :presence => true, :uniqueness => true
  #validate :detalle, :presence => true
  
end
