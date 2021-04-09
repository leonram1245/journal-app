class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column_default :categories, :title, "General"
    change_column_default :categories, :description, "General"
  end
end
