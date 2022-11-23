require 'rails_helper'

RSpec.describe "trocas/new", type: :view do
  before(:each) do
    assign(:troca, Troca.new(
      proposta_por: nil,
      proposta_para: nil,
      item_proposto: nil,
      item: nil
    ))
  end

  it "renders new troca form" do
    render

    assert_select "form[action=?][method=?]", trocas_path, "post" do

      assert_select "input[name=?]", "troca[proposta_por_id]"

      assert_select "input[name=?]", "troca[proposta_para_id]"

      assert_select "input[name=?]", "troca[item_proposto_id]"

      assert_select "input[name=?]", "troca[item_id]"
    end
  end
end
