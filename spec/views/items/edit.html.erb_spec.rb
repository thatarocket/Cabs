require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      nome: "MyString",
      descricao: "MyText",
      condicao: "MyString",
      categoria: "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[nome]"

      assert_select "textarea[name=?]", "item[descricao]"

      assert_select "input[name=?]", "item[condicao]"

      assert_select "input[name=?]", "item[categoria]"
    end
  end
end
