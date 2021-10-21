class RenameEventTimeColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :event_time, :start_time
  end
end
