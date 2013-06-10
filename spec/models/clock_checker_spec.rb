require 'spec_helper'

describe ClockChecker do
 let(:employee) {Employee.new.lunch = Time.now)
change(hour: 12)}

  it{ClockChecker.should respond_to(:check_in)}
  it{ClockChecker.should respond_to(:check_out)}
  it{ClockChecker.should respond_to(:up_to_date)}
  it "Should differ days" do
    expect{ ClockChecker.check_in employee,Time.now }.to change{employee.hour_histories.pop}
  end
  it "Should change went to lunch hour" do
    ClockChecker.check_in employee,Time.now.change(hour: 9,min:20)
    expect{ ClockChecker.check_out employee, Time.now.change(hour:12)}.to change{employee.hour_histories.pop.went_lunch}
  end
end
