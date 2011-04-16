class Recibo < ActiveRecord::Base
  belongs_to :cliente
  has_many :facturarecibo  
end
