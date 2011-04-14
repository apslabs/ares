class Recibo < ActiveRecord::Base
  belongs_to :cliente
  has_many :factura
end
