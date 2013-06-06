require 'spec_helper'

describe "scheduled_employes/index" do
  before(:each) do
    assign(:scheduled_employes, [
      stub_model(ScheduledEmploye),
      stub_model(ScheduledEmploye)
    ])
  end

  it "renders a list of scheduled_employes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
