class Facturanotacredito < ActiveRecord::Base
  belongs_to :factura
  belongs_to :notacredito
end
