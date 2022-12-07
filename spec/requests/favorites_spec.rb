require 'rails_helper'

RSpec.describe "Favorites", type: :request do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  describe "GET /update" do
    it "returns http success" do
      ItemTroca.create! valid_attributes
      get "/favorites/update"
      expect(response).to have_http_status(:success)
    end
  end

end
