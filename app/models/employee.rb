class Employee < ActiveRecord::Base
  attr_accessible :arrival, :exit, :lunch, :name, :type, :workload
end
