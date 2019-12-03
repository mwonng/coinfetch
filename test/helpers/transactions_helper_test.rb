require 'test_helper'

class TransactionsHelperTest < ActiveSupport::TestCase
    include TransactionsHelper

    test "duplicate_transaction() should return true if it has three price the same" do
        @transaction = transactions(:one)
        assert_equal true, duplicate_transaction?(@transaction, @transaction)
    end

    test "get_last_transacton_by_id() should return right id" do
        @currency = currencies(:BTC)
        @transaction = transactions(:two)
        assert_equal @transaction, get_last_transacton_by_id(@currency.id)
    end

    
    test "capture_and_save() should return false if currency enpoint is broken" do 
        @currency = currencies(:BTC)
        @currency.endpoint = "https://data.exchange.coinjar.com/products/BTCAUD/broken-link"
        assert_equal false, capture_and_save(@currency)
    end

    test "capture_and_save() should return add one more transaction with proper endpoint" do 
        @currency = currencies(:BTC)
        puts @currency.transactions

        assert_equal 2, @currency.transactions.size
        
        capture_and_save(@currency)
        assert_equal 3, @currency.transactions.size
    end
end
