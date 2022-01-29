require 'rails_helper'

RSpec.describe "money_transactions/new", type: :view do
  before(:each) do
    assign(:money_transaction, MoneyTransaction.new(
      amount: 1.5,
      description: "MyText",
      transaction_category: nil
    ))
  end

  it "renders new money_transaction form" do
    render

    assert_select "form[action=?][method=?]", money_transactions_path, "post" do

      assert_select "input[name=?]", "money_transaction[amount]"

      assert_select "textarea[name=?]", "money_transaction[description]"

      assert_select "input[name=?]", "money_transaction[transaction_category_id]"
    end
  end
end
