class Facturarecibo < ActiveRecord::Base
  belongs_to :factura
  belongs_to :recibo
  has_many :factura
  has_many :recibo
end
