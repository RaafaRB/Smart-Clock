require 'spec_helper'

describe "employees/new" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :name => "MyString",
      :workload => 1,
      :type => ""
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", employees_path, "post" do
      assert_select "input#employee_name[name=?]", "employee[name]"
      assert_select "input#employee_workload[name=?]", "employee[workload]"
      assert_select "input#employee_type[name=?]", "employee[type]"
    end
  end
end
