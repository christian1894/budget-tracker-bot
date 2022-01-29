require 'rails_helper'

RSpec.describe "transaction_categories/edit", type: :view do
  before(:each) do
    @transaction_category = assign(:transaction_category, TransactionCategory.create!(
      name: "MyString"
    ))
  end

  it "renders the edit transaction_category form" do
    render

    assert_select "form[action=?][method=?]", transaction_category_path(@transaction_category), "post" do

      assert_select "input[name=?]", "transaction_category[name]"
    end
  end
end
