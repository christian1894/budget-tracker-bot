require 'rails_helper'

RSpec.describe "transaction_categories/new", type: :view do
  before(:each) do
    assign(:transaction_category, TransactionCategory.new(
      name: "MyString"
    ))
  end

  it "renders new transaction_category form" do
    render

    assert_select "form[action=?][method=?]", transaction_categories_path, "post" do

      assert_select "input[name=?]", "transaction_category[name]"
    end
  end
end
