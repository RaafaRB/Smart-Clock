require "spec_helper"

describe HourBankEmployeesController do
  describe "routing" do

    it "routes to #index" do
      get("/hour_bank_employees").should route_to("hour_bank_employees#index")
    end

    it "routes to #new" do
      get("/hour_bank_employees/new").should route_to("hour_bank_employees#new")
    end

    it "routes to #show" do
      get("/hour_bank_employees/1").should route_to("hour_bank_employees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hour_bank_employees/1/edit").should route_to("hour_bank_employees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hour_bank_employees").should route_to("hour_bank_employees#create")
    end

    it "routes to #update" do
      put("/hour_bank_employees/1").should route_to("hour_bank_employees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hour_bank_employees/1").should route_to("hour_bank_employees#destroy", :id => "1")
    end

  end
end
