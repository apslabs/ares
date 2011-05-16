# == Schema Information
# Schema version: 20110427202648
#
# Table name: recibos
#
#  id         :integer         not null, primary key
#  cliente_id :integer
#  fecha      :date
#  importe    :decimal(, )
#  numero     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Recibo < Comprobante
  has_many :facturarecibos
  
  def total_recibo
    self.importe
  end
  
  def total_comprobante
    (self.importe * -1)
  end
    
end
