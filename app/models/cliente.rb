class Cliente < ActiveRecord::Base
  has_many :factura
  has_many :recibo
  has_many :notacredito
  # validates_presence_of :razonsocial, :codigo, :cuit 
  validates :cuit, :presence => true, :length => { :maximum => 11 }
  validates :razonsocial, :presence => true
  validates :codigo, :presence => true
end
