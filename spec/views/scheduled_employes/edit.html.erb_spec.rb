require 'spec_helper'

describe "scheduled_employes/edit" do
  before(:each) do
    @scheduled_employe = assign(:scheduled_employe, stub_model(ScheduledEmploye))
  end

  it "renders the edit scheduled_employe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scheduled_employe_path(@scheduled_employe), "post" do
    end
  end
end
