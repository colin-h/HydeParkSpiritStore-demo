require "spec_helper"

describe SimpleProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/simple_products").should route_to("simple_products#index")
    end

    it "routes to #new" do
      get("/simple_products/new").should route_to("simple_products#new")
    end

    it "routes to #show" do
      get("/simple_products/1").should route_to("simple_products#show", :id => "1")
    end

    it "routes to #edit" do
      get("/simple_products/1/edit").should route_to("simple_products#edit", :id => "1")
    end

    it "routes to #create" do
      post("/simple_products").should route_to("simple_products#create")
    end

    it "routes to #update" do
      put("/simple_products/1").should route_to("simple_products#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/simple_products/1").should route_to("simple_products#destroy", :id => "1")
    end

  end
end
