require 'spec_helper'

describe "employees/edit" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :name => "MyString",
      :workload => 1,
      :type => ""
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do
      assert_select "input#employee_name[name=?]", "employee[name]"
      assert_select "input#employee_workload[name=?]", "employee[workload]"
      assert_select "input#employee_type[name=?]", "employee[type]"
    end
  end
end
