class RenameDatetimeColumnToTraining < ActiveRecord::Migration[6.1]
  def change
    rename_column :trainings, :datetime, :start_time
  end
end
