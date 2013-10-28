require "spec_helper"

describe VariantProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/variant_products").should route_to("variant_products#index")
    end

    it "routes to #new" do
      get("/variant_products/new").should route_to("variant_products#new")
    end

    it "routes to #show" do
      get("/variant_products/1").should route_to("variant_products#show", :id => "1")
    end

    it "routes to #edit" do
      get("/variant_products/1/edit").should route_to("variant_products#edit", :id => "1")
    end

    it "routes to #create" do
      post("/variant_products").should route_to("variant_products#create")
    end

    it "routes to #update" do
      put("/variant_products/1").should route_to("variant_products#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/variant_products/1").should route_to("variant_products#destroy", :id => "1")
    end

  end
end
