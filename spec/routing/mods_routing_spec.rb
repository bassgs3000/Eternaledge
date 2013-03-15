require "spec_helper"

describe ModsController do
  describe "routing" do

    it "routes to #index" do
      get("/mods").should route_to("mods#index")
    end

    it "routes to #new" do
      get("/mods/new").should route_to("mods#new")
    end

    it "routes to #show" do
      get("/mods/1").should route_to("mods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mods/1/edit").should route_to("mods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mods").should route_to("mods#create")
    end

    it "routes to #update" do
      put("/mods/1").should route_to("mods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mods/1").should route_to("mods#destroy", :id => "1")
    end

  end
end
