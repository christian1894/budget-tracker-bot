require 'rails_helper'

RSpec.describe "money_transactions/edit", type: :view do
  before(:each) do
    transaction_category = create(:transaction_category)
    @money_transaction = assign(:money_transaction, MoneyTransaction.create!(
      amount: 1.5,
      description: "MyText",
      transaction_category: transaction_category
    ))
  end

  it "renders the edit money_transaction form" do
    render

    assert_select "form[action=?][method=?]", money_transaction_path(@money_transaction), "post" do

      assert_select "input[name=?]", "money_transaction[amount]"

      assert_select "textarea[name=?]", "money_transaction[description]"

      assert_select "input[name=?]", "money_transaction[transaction_category_id]"
    end
  end
end
