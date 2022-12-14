require 'rails_helper'

RSpec.describe "item_trocas/show", type: :view do
  def favorite_text
    return @favorite_exists ? "Desfavoritar" : "Favoritar"
  end

  helper_method :favorite_text
  before(:each) do
    @item_troca = assign(:item_troca, ItemTroca.create!(
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
