class RemoveFieldNameFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :owner_id, :bigint
  end
end
