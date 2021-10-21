class RenamaEventTitleColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :event_title, :title
  end
end
