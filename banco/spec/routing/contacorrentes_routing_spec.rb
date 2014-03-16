require "spec_helper"

describe ContacorrentesController do
  describe "routing" do

    it "routes to #index" do
      get("/contacorrentes").should route_to("contacorrentes#index")
    end

    it "routes to #new" do
      get("/contacorrentes/new").should route_to("contacorrentes#new")
    end

    it "routes to #show" do
      get("/contacorrentes/1").should route_to("contacorrentes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contacorrentes/1/edit").should route_to("contacorrentes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contacorrentes").should route_to("contacorrentes#create")
    end

    it "routes to #update" do
      put("/contacorrentes/1").should route_to("contacorrentes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contacorrentes/1").should route_to("contacorrentes#destroy", :id => "1")
    end

  end
end
