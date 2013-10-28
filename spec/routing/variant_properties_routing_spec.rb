require "spec_helper"

describe VariantPropertiesController do
  describe "routing" do

    it "routes to #index" do
      get("/variant_properties").should route_to("variant_properties#index")
    end

    it "routes to #new" do
      get("/variant_properties/new").should route_to("variant_properties#new")
    end

    it "routes to #show" do
      get("/variant_properties/1").should route_to("variant_properties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/variant_properties/1/edit").should route_to("variant_properties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/variant_properties").should route_to("variant_properties#create")
    end

    it "routes to #update" do
      put("/variant_properties/1").should route_to("variant_properties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/variant_properties/1").should route_to("variant_properties#destroy", :id => "1")
    end

  end
end
