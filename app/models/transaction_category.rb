class TransactionCategory < ApplicationRecord
  has_many :money_transactions

  validates :name , presence: true
end
