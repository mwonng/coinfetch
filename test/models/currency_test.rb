require 'test_helper'

class CurrencyTest < ActiveSupport::TestCase
  setup do
    @currency = currencies(:BTC)
  end

  test "destroy currency should delete all its transactions" do
    @currency.destroy
    assert_empty @currency.transactions
  end
end
