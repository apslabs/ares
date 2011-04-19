class Facturanotacredito < ActiveRecord::Base
  belongs_to :factura
  belongs_to :notacredito
  has_one :cliente, :through => :factura
end
