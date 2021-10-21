class RenameEventContentColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :event_content, :content
  end
end
