class AddStateToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :state, :integer, default: 0
    remove_column :todo_items, :completed
  end
end
