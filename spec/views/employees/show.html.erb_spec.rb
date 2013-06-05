require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :name => "Name",
      :workload => 1,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Type/)
  end
end
