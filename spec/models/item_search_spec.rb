require 'rails_helper'

RSpec.describe ItemSearch, type: :model do
    it 'calls the method that performs a search in the items database' do
      expect(ItemSearch).to receive(:find_in_items).with('item-teste')
      post :search_item, {:search_terms => 'item-teste'}
    end
    it 'selects the Search Results template for rendering' do
      post :search_item, {:search_terms => 'nome-item'}
      response.should render_template('search_item')
    end
    it 'makes the item search results available to that template' do
      fake_results = [mock('Item'), mock('Item')]
      Item.stub(:find_in_item).and_return(fake_results)
      post :search_item, {:search_terms => 'nome-item'}
      expect assigns(:items).to eq(fake_results)
    end
end
