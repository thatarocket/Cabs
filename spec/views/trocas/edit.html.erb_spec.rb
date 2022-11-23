require 'rails_helper'

RSpec.describe "trocas/edit", type: :view do
  let(:troca) {
    Troca.create!(
      proposta_por: nil,
      proposta_para: nil,
      item_proposto: nil,
      item: nil
    )
  }

  before(:each) do
    assign(:troca, troca)
  end

  it "renders the edit troca form" do
    render

    assert_select "form[action=?][method=?]", troca_path(troca), "post" do

      assert_select "input[name=?]", "troca[proposta_por_id]"

      assert_select "input[name=?]", "troca[proposta_para_id]"

      assert_select "input[name=?]", "troca[item_proposto_id]"

      assert_select "input[name=?]", "troca[item_id]"
    end
  end
end