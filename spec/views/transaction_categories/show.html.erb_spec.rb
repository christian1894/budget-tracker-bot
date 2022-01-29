require 'rails_helper'

RSpec.describe "transaction_categories/show", type: :view do
  before(:each) do
    @transaction_category = assign(:transaction_category, TransactionCategory.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
