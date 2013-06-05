class CreateHourHistories < ActiveRecord::Migration
  def change
    create_table :hour_histories do |t|
      t.time :arrived
      t.time :went_away
      t.time :went_lunch
      t.time :came_lunch
      t.time :day
      t.integer :employee_id

      t.timestamps
    end
  end
end
