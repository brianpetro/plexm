require "spec_helper"

describe DiscussionCommentsController do
  describe "routing" do

    it "routes to #index" do
      get("/discussion_comments").should route_to("discussion_comments#index")
    end

    it "routes to #new" do
      get("/discussion_comments/new").should route_to("discussion_comments#new")
    end

    it "routes to #show" do
      get("/discussion_comments/1").should route_to("discussion_comments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/discussion_comments/1/edit").should route_to("discussion_comments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/discussion_comments").should route_to("discussion_comments#create")
    end

    it "routes to #update" do
      put("/discussion_comments/1").should route_to("discussion_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/discussion_comments/1").should route_to("discussion_comments#destroy", :id => "1")
    end

  end
end
