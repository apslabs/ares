class Facturanotacredito < ActiveRecord::Base
  belongs_to :factura
  belongs_to :notacredito
  has_many :factura
  has_many :notacredito
end
