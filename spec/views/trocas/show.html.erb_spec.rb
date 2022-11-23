require 'rails_helper'

RSpec.describe "trocas/show", type: :view do
  before(:each) do
    assign(:troca, Troca.create!(
      proposta_por: "Proposta_por",
      proposta_para: "Proposta_para",
      item_proposto: "Item_proposto",
      item: "Item"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Proposta_por/)
    expect(rendered).to match(/Proposta_para/)
    expect(rendered).to match(/Item_proposto/)
    expect(rendered).to match(/Item/)
  end
end
