class CreateMoneyTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :money_transactions do |t|
      t.float :amount
      t.text :description
      t.references :transaction_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
