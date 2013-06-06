require 'spec_helper'

describe "hour_bank_employees/index" do
  before(:each) do
    assign(:hour_bank_employees, [
      stub_model(HourBankEmployee),
      stub_model(HourBankEmployee)
    ])
  end

  it "renders a list of hour_bank_employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
