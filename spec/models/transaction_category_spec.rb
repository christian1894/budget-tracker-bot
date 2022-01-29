require 'rails_helper'

RSpec.describe TransactionCategory, type: :model do
  describe 'validations' do
    it { should have_many(:money_transactions) }
  end
end
