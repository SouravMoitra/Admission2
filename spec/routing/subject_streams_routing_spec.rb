require "spec_helper"

describe SubjectStreamsController do
  describe "routing" do

    it "routes to #index" do
      get("/subject_streams").should route_to("subject_streams#index")
    end

    it "routes to #new" do
      get("/subject_streams/new").should route_to("subject_streams#new")
    end

    it "routes to #show" do
      get("/subject_streams/1").should route_to("subject_streams#show", :id => "1")
    end

    it "routes to #edit" do
      get("/subject_streams/1/edit").should route_to("subject_streams#edit", :id => "1")
    end

    it "routes to #create" do
      post("/subject_streams").should route_to("subject_streams#create")
    end

    it "routes to #update" do
      put("/subject_streams/1").should route_to("subject_streams#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/subject_streams/1").should route_to("subject_streams#destroy", :id => "1")
    end

  end
end
