require "spec_helper"

describe WorkEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/work_entries").should route_to("work_entries#index")
    end

    it "routes to #new" do
      get("/work_entries/new").should route_to("work_entries#new")
    end

    it "routes to #show" do
      get("/work_entries/1").should route_to("work_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/work_entries/1/edit").should route_to("work_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/work_entries").should route_to("work_entries#create")
    end

    it "routes to #update" do
      put("/work_entries/1").should route_to("work_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/work_entries/1").should route_to("work_entries#destroy", :id => "1")
    end

  end
end
