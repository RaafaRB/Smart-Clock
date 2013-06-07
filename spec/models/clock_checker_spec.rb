require 'spec_helper'

describe ClockChecker do
  it{should respond_to(:check_in)}
  it{should respond_to(:check_out)}
  it{should respond_to(:empty?)}
end
