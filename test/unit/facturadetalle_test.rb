# == Schema Information
# Schema version: 20110427202648
#
# Table name: facturadetalles
#
#  id             :integer         not null, primary key
#  factura_id     :integer
#  descripcion    :string(255)
#  cantidad       :decimal(, )
#  preciounitario :decimal(, )
#  created_at     :datetime
#  updated_at     :datetime
#  tasaiva        :decimal(, )
#

require 'test_helper'

class FacturadetalleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
