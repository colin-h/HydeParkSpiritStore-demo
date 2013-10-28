require "spec_helper"

describe VariantsController do
  describe "routing" do

    it "routes to #index" do
      get("/variants").should route_to("variants#index")
    end

    it "routes to #new" do
      get("/variants/new").should route_to("variants#new")
    end

    it "routes to #show" do
      get("/variants/1").should route_to("variants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/variants/1/edit").should route_to("variants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/variants").should route_to("variants#create")
    end

    it "routes to #update" do
      put("/variants/1").should route_to("variants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/variants/1").should route_to("variants#destroy", :id => "1")
    end

  end
end
