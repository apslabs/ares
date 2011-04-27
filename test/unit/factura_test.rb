# == Schema Information
# Schema version: 20110427202648
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
#

require 'test_helper'

class FacturaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
