require "spec_helper"

describe ScheduledEmployesController do
  describe "routing" do

    it "routes to #index" do
      get("/scheduled_employes").should route_to("scheduled_employes#index")
    end

    it "routes to #new" do
      get("/scheduled_employes/new").should route_to("scheduled_employes#new")
    end

    it "routes to #show" do
      get("/scheduled_employes/1").should route_to("scheduled_employes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scheduled_employes/1/edit").should route_to("scheduled_employes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scheduled_employes").should route_to("scheduled_employes#create")
    end

    it "routes to #update" do
      put("/scheduled_employes/1").should route_to("scheduled_employes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scheduled_employes/1").should route_to("scheduled_employes#destroy", :id => "1")
    end

  end
end
