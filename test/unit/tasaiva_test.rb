# == Schema Information
# Schema version: 20110427212004
#
# Table name: tasaivas
#
#  id          :integer         not null, primary key
#  detalle     :string(255)
#  porcentaje  :decimal(, )
#  vencimiento :date
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class TasaivaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
