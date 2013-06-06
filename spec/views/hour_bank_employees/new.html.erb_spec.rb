require 'spec_helper'

describe "hour_bank_employees/new" do
  before(:each) do
    assign(:hour_bank_employee, stub_model(HourBankEmployee).as_new_record)
  end

  it "renders new hour_bank_employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hour_bank_employees_path, "post" do
    end
  end
end
