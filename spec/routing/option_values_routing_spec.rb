require "spec_helper"

describe OptionValuesController do
  describe "routing" do

    it "routes to #index" do
      get("/option_values").should route_to("option_values#index")
    end

    it "routes to #new" do
      get("/option_values/new").should route_to("option_values#new")
    end

    it "routes to #show" do
      get("/option_values/1").should route_to("option_values#show", :id => "1")
    end

    it "routes to #edit" do
      get("/option_values/1/edit").should route_to("option_values#edit", :id => "1")
    end

    it "routes to #create" do
      post("/option_values").should route_to("option_values#create")
    end

    it "routes to #update" do
      put("/option_values/1").should route_to("option_values#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/option_values/1").should route_to("option_values#destroy", :id => "1")
    end

  end
end
