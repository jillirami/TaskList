class RenameCompletionDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :completion_date, :completed_at
  end
end
