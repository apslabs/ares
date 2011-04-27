# == Schema Information
# Schema version: 20110427202648
#
# Table name: facturanotacreditos
#
#  id             :integer         not null, primary key
#  factura_id     :integer
#  fecha          :date
#  importe        :decimal(, )
#  notacredito_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class FacturanotacreditoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
