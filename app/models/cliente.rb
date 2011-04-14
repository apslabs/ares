class Cliente < ActiveRecord::Base
  has_many :factura
  has_many :recibo
  has_many :notacredito
end
