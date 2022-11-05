require 'rails_helper'

RSpec.describe "Welcomes", type: :request do
  describe "GET /homepage" do
    it "returns http success" do
      get "/welcome/homepage"
      expect(response).to have_http_status(:success)
    end
  end

end
