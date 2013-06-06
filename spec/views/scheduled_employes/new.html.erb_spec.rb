require 'spec_helper'

describe "scheduled_employes/new" do
  before(:each) do
    assign(:scheduled_employe, stub_model(ScheduledEmploye).as_new_record)
  end

  it "renders new scheduled_employe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scheduled_employes_path, "post" do
    end
  end
end
