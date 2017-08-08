class AddTaskToTaskManager < ActiveRecord::Migration[5.0]
 def change
    add_column :TaskManager, :name :string
  end
end
