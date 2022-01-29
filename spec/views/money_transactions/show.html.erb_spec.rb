require 'rails_helper'

RSpec.describe "money_transactions/show", type: :view do
  before(:each) do
    transaction_category = create(:transaction_category)
    @money_transaction = assign(:money_transaction, MoneyTransaction.create!(
      amount: 2.5,
      description: "MyText",
      transaction_category: transaction_category
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
