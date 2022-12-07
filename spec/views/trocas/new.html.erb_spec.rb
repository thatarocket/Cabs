require 'rails_helper'

RSpec.describe "trocas/new", type: :view do
  before(:each) do
    assign(:troca, Troca.new(
      usuario: nil,
      item_troca: nil
    ))
  end

  it "renders new troca form" do
    render

    assert_select "form[action=?][method=?]", trocas_path, "post" do

      assert_select "input[name=?]", "troca[usuario_id]"

      assert_select "input[name=?]", "troca[item_troca_id]"
    end
  end
end
