require 'rails_helper'

RSpec.describe "trocas/show", type: :view do
  before(:each) do
    assign(:troca, Troca.create!(
      proposta_por: nil,
      proposta_para: nil,
      item_proposto: nil,
      item: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
