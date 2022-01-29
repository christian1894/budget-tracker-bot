require 'rails_helper'

RSpec.describe MoneyTransaction, type: :model do
  describe 'validations' do
    it { should belong_to(:transaction_category) }
  end
end
