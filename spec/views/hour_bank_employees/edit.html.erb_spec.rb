require 'spec_helper'

describe "hour_bank_employees/edit" do
  before(:each) do
    @hour_bank_employee = assign(:hour_bank_employee, stub_model(HourBankEmployee))
  end

  it "renders the edit hour_bank_employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hour_bank_employee_path(@hour_bank_employee), "post" do
    end
  end
end
