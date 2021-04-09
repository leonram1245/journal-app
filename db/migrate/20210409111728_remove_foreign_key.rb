class RemoveForeignKey < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key "categories", "users"
    remove_foreign_key "tasks", "categories"
    remove_foreign_key "tasks", "users"
  end
end
