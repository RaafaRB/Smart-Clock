class HourHistory < ActiveRecord::Base
  attr_accessible :arrived, :came_lunch, :day, :employee_id, :went_away, :went_lunch, :difference
  belongs_to :employee, dependent: :destroy
  default_scope order: 'created_at DESC'
end
