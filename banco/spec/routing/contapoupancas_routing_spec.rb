require "spec_helper"

describe ContapoupancasController do
  describe "routing" do

    it "routes to #index" do
      get("/contapoupancas").should route_to("contapoupancas#index")
    end

    it "routes to #new" do
      get("/contapoupancas/new").should route_to("contapoupancas#new")
    end

    it "routes to #show" do
      get("/contapoupancas/1").should route_to("contapoupancas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contapoupancas/1/edit").should route_to("contapoupancas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contapoupancas").should route_to("contapoupancas#create")
    end

    it "routes to #update" do
      put("/contapoupancas/1").should route_to("contapoupancas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contapoupancas/1").should route_to("contapoupancas#destroy", :id => "1")
    end

  end
end
