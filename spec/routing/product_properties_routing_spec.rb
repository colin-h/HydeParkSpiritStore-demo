require "spec_helper"

describe ProductPropertiesController do
  describe "routing" do

    it "routes to #index" do
      get("/product_properties").should route_to("product_properties#index")
    end

    it "routes to #new" do
      get("/product_properties/new").should route_to("product_properties#new")
    end

    it "routes to #show" do
      get("/product_properties/1").should route_to("product_properties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/product_properties/1/edit").should route_to("product_properties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/product_properties").should route_to("product_properties#create")
    end

    it "routes to #update" do
      put("/product_properties/1").should route_to("product_properties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/product_properties/1").should route_to("product_properties#destroy", :id => "1")
    end

  end
end
