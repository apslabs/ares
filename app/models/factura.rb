class Factura < ActiveRecord::Base
  belongs_to :cliente
  has_many :facturarecibo
  has_many :facturanotacredito
  has_many :facturadetalle
  
  validates :fecha, :presence => true
  validates :numero, :presence => true, :length => { :maximum => 10 }, :uniqueness => true, :numericality => true
  validates :importe, :presence => true, :numericality => true

  scope :no_actualizados, where("updated_at IS NULL" )
  scope :vencidas, where("fechavto < ?", Date.today)
  scope :por_cliente, lambda {|cliente| where(:cliente_id => cliente) }
  
  def totalfactura
    facturadetalle.all.sum(&:totalitem)
  end
  
end