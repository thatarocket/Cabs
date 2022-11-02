require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        nome: "Nome",
        descricao: "MyText",
        condicao: "Condicao",
        categoria: "Categoria"
      ),
      Item.create!(
        nome: "Nome",
        descricao: "MyText",
        condicao: "Condicao",
        categoria: "Categoria"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Condicao".to_s, count: 2
    assert_select "tr>td", text: "Categoria".to_s, count: 2
  end
end
