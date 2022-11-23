require 'rails_helper'

RSpec.describe "item_trocas/edit", type: :view do
  before(:each) do
    @item_troca = assign(:item_troca, ItemTroca.create!(
      nome: "MyString",
      descricao: "MyText",
      condicao: "MyString",
      categoria: "MyString",
      dono: "MyString"
    ))
  end

  it "renders the edit item_troca form" do
    render

    assert_select "form[action=?][method=?]", item_troca_path(@item_troca), "post" do

      assert_select "input[name=?]", "item_troca[nome]"

      assert_select "textarea[name=?]", "item_troca[descricao]"

      assert_select "select[name=?]", "item_troca[condicao]"

      assert_select "select[name=?]", "item_troca[categoria]"

      assert_select "select[name=?]", "item_troca[dono]"
    end
  end
end
