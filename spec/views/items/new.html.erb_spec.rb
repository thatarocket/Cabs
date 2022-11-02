require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      nome: "MyString",
      descricao: "MyText",
      condicao: "MyString",
      categoria: "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[nome]"

      assert_select "textarea[name=?]", "item[descricao]"

      assert_select "input[name=?]", "item[condicao]"

      assert_select "input[name=?]", "item[categoria]"
    end
  end
end
