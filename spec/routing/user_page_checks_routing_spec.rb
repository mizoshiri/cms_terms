require "spec_helper"

describe UserPageChecksController do
  describe "routing" do

    it "routes to #index" do
      get("/user_page_checks").should route_to("user_page_checks#index")
    end

    it "routes to #new" do
      get("/user_page_checks/new").should route_to("user_page_checks#new")
    end

    it "routes to #show" do
      get("/user_page_checks/1").should route_to("user_page_checks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_page_checks/1/edit").should route_to("user_page_checks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_page_checks").should route_to("user_page_checks#create")
    end

    it "routes to #update" do
      put("/user_page_checks/1").should route_to("user_page_checks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_page_checks/1").should route_to("user_page_checks#destroy", :id => "1")
    end

  end
end
