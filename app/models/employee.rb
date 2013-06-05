class Employee < ActiveRecord::Base
  attr_accessible :arrival, :exit, :lunch, :name, :type, :workload
  has_many :hour_histories 
end
