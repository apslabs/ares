class Facturarecibo < ActiveRecord::Base
  belongs_to :factura
  belongs_to :recibo
end
