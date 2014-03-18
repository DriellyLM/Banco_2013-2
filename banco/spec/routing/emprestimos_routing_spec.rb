require "spec_helper"

describe EmprestimosController do
  describe "routing" do

    it "routes to #index" do
      get("/emprestimos").should route_to("emprestimos#index")
    end

    it "routes to #new" do
      get("/emprestimos/new").should route_to("emprestimos#new")
    end

    it "routes to #show" do
      get("/emprestimos/1").should route_to("emprestimos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/emprestimos/1/edit").should route_to("emprestimos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/emprestimos").should route_to("emprestimos#create")
    end

    it "routes to #update" do
      put("/emprestimos/1").should route_to("emprestimos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/emprestimos/1").should route_to("emprestimos#destroy", :id => "1")
    end

  end
end
