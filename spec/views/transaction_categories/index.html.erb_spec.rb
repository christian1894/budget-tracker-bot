require 'rails_helper'

RSpec.describe "transaction_categories/index", type: :view do
  before(:each) do
    assign(:transaction_categories, [
      TransactionCategory.create!(
        name: "Name"
      ),
      TransactionCategory.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of transaction_categories" do
    render
    assert_select "div>p>span", text: "Name".to_s, count: 2
  end
end
