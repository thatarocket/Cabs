require 'rails_helper'

RSpec.describe "trocas/show", type: :view do
  before(:each) do
    assign(:troca, Troca.create!(
      usuario: nil,
      item_troca: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
