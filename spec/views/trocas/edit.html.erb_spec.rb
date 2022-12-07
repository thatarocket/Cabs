require 'rails_helper'

RSpec.describe "trocas/edit", type: :view do
  let(:troca) {
    Troca.create!(
      usuario: nil,
      item_troca: nil
    )
  }

  before(:each) do
    assign(:troca, troca)
  end

  it "renders the edit troca form" do
    render

    assert_select "form[action=?][method=?]", troca_path(troca), "post" do

      assert_select "input[name=?]", "troca[usuario_id]"

      assert_select "input[name=?]", "troca[item_troca_id]"
    end
  end
end
