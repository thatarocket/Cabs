require 'rails_helper'

RSpec.describe "item_trocas/new", type: :view do
  before(:each) do
    assign(:item_troca, ItemTroca.new(
      nome: "MyString",
      descricao: "MyText",
      condicao: "MyString",
      categoria: "MyString"
    ))
  end

  it "renders new item_troca form" do
    render

    assert_select "form[action=?][method=?]", item_trocas_path, "post" do

      assert_select "input[name=?]", "item_troca[nome]"

      assert_select "textarea[name=?]", "item_troca[descricao]"

      assert_select "input[name=?]", "item_troca[condicao]"

      assert_select "input[name=?]", "item_troca[categoria]"
    end
  end
end
