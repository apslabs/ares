# == Schema Information
# Schema version: 20110427202648
#
# Table name: facturarecibos
#
#  id         :integer         not null, primary key
#  factura_id :integer
#  fecha      :date
#  importe    :decimal(, )
#  recibo_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class FacturareciboTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
