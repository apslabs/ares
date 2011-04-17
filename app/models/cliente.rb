class Cliente < ActiveRecord::Base
  has_many :factura
  has_many :recibo
  has_many :notacredito
  validates :cuit, :presence => true, :length => { :maximum => 11 }, :uniqueness => true
  validates :razonsocial, :presence => true
  validates :codigo, :presence => true, :uniqueness => true
end
