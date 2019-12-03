class AddCurrencyToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :currency, foreign_key: true, index:true
  end
end
