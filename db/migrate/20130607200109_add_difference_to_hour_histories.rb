class AddDifferenceToHourHistories < ActiveRecord::Migration
  def change
    add_column :hour_histories, :difference, :integer
  end
end
