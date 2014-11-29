class AddDateToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :date, :date
  end
end
