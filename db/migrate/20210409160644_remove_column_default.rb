class RemoveColumnDefault < ActiveRecord::Migration[6.1]
  change_column_default :categories, :title, nil
  change_column_default :categories, :description, nil
  def change
  end
end
