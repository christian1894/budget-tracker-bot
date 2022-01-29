require 'rails_helper'

RSpec.describe "money_transactions/index", type: :view do
  before(:each) do
    @transaction_category = create(:transaction_category)
    assign(:money_transactions, [
      MoneyTransaction.create!(
        amount: 2.5,
        description: "MyText",
        transaction_category: @transaction_category
      ),
      MoneyTransaction.create!(
        amount: 2.5,
        description: "MyText",
        transaction_category: @transaction_category
      )
    ])
  end

  it "renders a list of money_transactions" do
    render
    assert_select "div>p>span", text: 2.5.to_s, count: 2
    assert_select "div>p>span", text: "MyText".to_s, count: 2
    assert_select "div>p>span", text: @transaction_category.id.to_s, count: 2
  end
end
