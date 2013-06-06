require 'spec_helper'

describe "hour_bank_employees/show" do
  before(:each) do
    @hour_bank_employee = assign(:hour_bank_employee, stub_model(HourBankEmployee))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
