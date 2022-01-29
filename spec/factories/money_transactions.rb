FactoryBot.define do
  factory :money_transaction do
    amount { 1.5 }
    description { "MyText" }
    transaction_category { create(:transaction_category) }
  end
end
