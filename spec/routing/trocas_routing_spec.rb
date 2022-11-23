require "rails_helper"

RSpec.describe TrocasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/trocas").to route_to("trocas#index")
    end

    it "routes to #new" do
      expect(get: "/trocas/new").to route_to("trocas#new")
    end

    it "routes to #show" do
      expect(get: "/trocas/1").to route_to("trocas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/trocas/1/edit").to route_to("trocas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/trocas").to route_to("trocas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/trocas/1").to route_to("trocas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/trocas/1").to route_to("trocas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/trocas/1").to route_to("trocas#destroy", id: "1")
    end
  end
end
