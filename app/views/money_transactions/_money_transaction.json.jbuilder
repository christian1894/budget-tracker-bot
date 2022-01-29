json.extract! money_transaction, :id, :amount, :description, :transaction_category_id, :created_at, :updated_at
json.url money_transaction_url(money_transaction, format: :json)
