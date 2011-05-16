# == Schema Information
# Schema version: 20110427202648
#
# Table name: notacreditos
#
#  id         :integer         not null, primary key
#  cliente_id :integer
#  fecha      :date
#  importe    :decimal(, )
#  numero     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Notacredito < Comprobante
  has_many :facturanotacreditos
    
  def total_notacredito
    self.importe
  end
  
  def total_comprobante
    (self.importe * -1)
  end
end
