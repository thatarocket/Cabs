require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      nome: "Nome",
      descricao: "MyText",
      condicao: "Condicao",
      categoria: "Categoria"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Condicao/)
    expect(rendered).to match(/Categoria/)
  end
end
