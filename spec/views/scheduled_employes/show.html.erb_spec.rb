require 'spec_helper'

describe "scheduled_employes/show" do
  before(:each) do
    @scheduled_employe = assign(:scheduled_employe, stub_model(ScheduledEmploye))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
