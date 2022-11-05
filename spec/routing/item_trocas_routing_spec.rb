require "rails_helper"

RSpec.describe ItemTrocasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/item_trocas").to route_to("item_trocas#index")
    end

    it "routes to #new" do
      expect(get: "/item_trocas/new").to route_to("item_trocas#new")
    end

    it "routes to #show" do
      expect(get: "/item_trocas/1").to route_to("item_trocas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/item_trocas/1/edit").to route_to("item_trocas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/item_trocas").to route_to("item_trocas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/item_trocas/1").to route_to("item_trocas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/item_trocas/1").to route_to("item_trocas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/item_trocas/1").to route_to("item_trocas#destroy", id: "1")
    end
  end
end
