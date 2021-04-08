class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
  add_foreign_key "categories", "users"
  add_foreign_key "tasks", "categories"
  end
end
