require 'rails_helper'

RSpec.describe "trocas/index", type: :view do
  before(:each) do
    assign(:trocas, [
      Troca.create!(
        usuario: nil,
        item_troca: nil
      ),
      Troca.create!(
        usuario: nil,
        item_troca: nil
      )
    ])
  end

  it "renders a list of trocas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
