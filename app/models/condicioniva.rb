# == Schema Information
# Schema version: 20110427202648
#
# Table name: condicionivas
#
#  id         :integer         not null, primary key
#  detalle    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Condicioniva < ActiveRecord::Base
  has_many :clientes
  
  validates :detalle, :presence => true
  validates :letra, :presence => true
end