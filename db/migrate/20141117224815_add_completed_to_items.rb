class AddCompletedToItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :completed, :boolean, default: false
  end
end
