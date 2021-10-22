class RenameTypeColumnToTraining < ActiveRecord::Migration[6.1]
  def change
    rename_column :trainings, :type, :training_type
  end
end
