class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :workload
      t.string :type
      t.time :arrival
      t.time :exit
      t.time :lunch

      t.timestamps
    end
  end
end
