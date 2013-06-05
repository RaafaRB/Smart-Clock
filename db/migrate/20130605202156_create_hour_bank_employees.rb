class CreateHourBankEmployees < ActiveRecord::Migration
  def change
    create_table :hour_bank_employees do |t|

      t.timestamps
    end
  end
end
