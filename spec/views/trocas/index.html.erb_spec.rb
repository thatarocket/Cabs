require 'rails_helper'

RSpec.describe "trocas/index", type: :view do
  before(:each) do
    assign(:trocas, [
      Troca.create!(
        proposta_por: "Proposta_por",
        proposta_para: "Proposta_para",
        item_proposto: "Item_proposto",
        item: "Item"
      ),
      Troca.create!(
        proposta_por: "Proposta_por",
        proposta_para: "Proposta_para",
        item_proposto: "Item_proposto",
        item: "Item"
      )
    ])
  end

  it "renders a list of trocas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(Proposta_por.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(Proposta_para.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(Item_proposto.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(Item.to_s), count: 2
  end
end
