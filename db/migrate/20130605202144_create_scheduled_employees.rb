class CreateScheduledEmployees < ActiveRecord::Migration
  def change
    create_table :scheduled_employees do |t|

      t.timestamps
    end
  end
end
