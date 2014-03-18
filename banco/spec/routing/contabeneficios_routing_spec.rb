require "spec_helper"

describe ContabeneficiosController do
  describe "routing" do

    it "routes to #index" do
      get("/contabeneficios").should route_to("contabeneficios#index")
    end

    it "routes to #new" do
      get("/contabeneficios/new").should route_to("contabeneficios#new")
    end

    it "routes to #show" do
      get("/contabeneficios/1").should route_to("contabeneficios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contabeneficios/1/edit").should route_to("contabeneficios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contabeneficios").should route_to("contabeneficios#create")
    end

    it "routes to #update" do
      put("/contabeneficios/1").should route_to("contabeneficios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contabeneficios/1").should route_to("contabeneficios#destroy", :id => "1")
    end

  end
end
