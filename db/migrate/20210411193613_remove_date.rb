class RemoveDate < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :deadline, :date
  end
end
