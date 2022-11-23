require 'rails_helper'

RSpec.describe "trocas/index", type: :view do
  before(:each) do
    assign(:trocas, [
      Troca.create!(
        proposta_por: nil,
        proposta_para: nil,
        item_proposto: nil,
        item: nil
      ),
      Troca.create!(
        proposta_por: nil,
        proposta_para: nil,
        item_proposto: nil,
        item: nil
      )
    ])
  end

  it "renders a list of trocas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
