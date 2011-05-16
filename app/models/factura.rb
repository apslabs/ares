# == Schema Information
# Schema version: 20110513124515
#
# Table name: facturas
#
#  id         :integer         not null, primary key
#  cliente_id :integer
#  fecha      :date
#  numero     :integer
#  fechavto   :date
#  created_at :datetime
#  updated_at :datetime
#  isprinted  :boolean
#

class Factura < Comprobante
  has_many :facturarecibos
  has_many :facturanotacreditos
  has_many :facturadetalles

  accepts_nested_attributes_for :facturadetalles, :allow_destroy => true, :reject_if => :all_blank

  attr_accessible :numero, :cliente_id, :fechavto, :fecha, :facturadetalles_attributes 
  
  attr_accessor :total_factura, :count_items
  
  scope :no_actualizados, where("updated_at IS NULL" )
  scope :vencidas, where("fechavto < ?", Date.today)
  scope :por_cliente, lambda {|cliente| where(:cliente_id => cliente) }


  def total_factura
    #facturadetalles.sum("preciounitario * cantidad * (1+(tasaiva/100))") 
    facturadetalles.all.sum(&:totalitem)
  end

  def total_comprobante
    self.total_factura
  end
  
  def total_iva_factura
    #facturadetalles.sum("preciounitario * cantidad * (1+(tasaiva/100))") 
    facturadetalles.all.sum(&:totalivaitem)
  end

  def isprinted?
    printed_at?
  end
  
  def total_monto_cancelado
    self.facturarecibos.all.sum(&:importe) + self.facturanotacreditos.sum(&:importe)
  end
  
  def total_monto_adeudado
    self.total_factura - self.total_monto_cancelado
  end  
end
