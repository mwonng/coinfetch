class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.float :last, null: false
      t.float :bid, null: false
      t.float :ask, null: false
      t.string :trans_time, null: false

      t.timestamps
    end
  end
end
