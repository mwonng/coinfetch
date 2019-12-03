require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currency = currencies(:BTC)
    @transactions = [transactions(:one),transactions(:two)]
  end

  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end

  test "should have transactions" do
    count = @currency.transactions.size
    assert_equal 2, count
  end
end
