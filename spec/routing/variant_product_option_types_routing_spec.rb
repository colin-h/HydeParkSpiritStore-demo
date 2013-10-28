require "spec_helper"

describe VariantProductOptionTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/variant_product_option_types").should route_to("variant_product_option_types#index")
    end

    it "routes to #new" do
      get("/variant_product_option_types/new").should route_to("variant_product_option_types#new")
    end

    it "routes to #show" do
      get("/variant_product_option_types/1").should route_to("variant_product_option_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/variant_product_option_types/1/edit").should route_to("variant_product_option_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/variant_product_option_types").should route_to("variant_product_option_types#create")
    end

    it "routes to #update" do
      put("/variant_product_option_types/1").should route_to("variant_product_option_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/variant_product_option_types/1").should route_to("variant_product_option_types#destroy", :id => "1")
    end

  end
end
