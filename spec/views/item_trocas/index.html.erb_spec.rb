require 'rails_helper'

RSpec.describe "item_trocas/index", type: :view do
  '''before(:each) do
    assign(:item_trocas, [
      ItemTroca.create!(
        nome: "Nome",
        descricao: "MyText",
        condicao: "Condicao",
        categoria: "Categoria",
        dono: "Dono"
      ),
      ItemTroca.create!(
        nome: "Nome",
        descricao: "MyText",
        condicao: "Condicao",
        categoria: "Categoria",
        dono: "Dono"
      )
    ])
  end

  it "renders a list of item_trocas" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Condicao".to_s, count: 2
    assert_select "tr>td", text: "Categoria".to_s, count: 2
    assert_select "tr>td", text: "Dono".to_s, count: 2
  end'''
end
