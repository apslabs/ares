# == Schema Information
# Schema version: 20110516183603
#
# Table name: detalles
#
#  id              :integer         not null, primary key
#  detallable_id   :integer
#  detallable_type :string(255)
#  descripcion     :string(255)
#  cantidad        :decimal(, )
#  preciounitario  :decimal(, )
#  created_at      :datetime
#  updated_at      :datetime
#  tasaiva         :decimal(, )
#

require 'test_helper'

class DetalleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
