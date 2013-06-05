class HourHistory < ActiveRecord::Base
  attr_accessible :arrived, :came_lunch, :day, :employee_id, :went_away, :went_lunch
end
