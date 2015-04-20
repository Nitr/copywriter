class AddExecuterToTask < ActiveRecord::Migration
  def up
    add_reference :tasks, :executer, index: true
    add_foreign_key :tasks, :users, column: :executer_id, primary_key: :id
  end

  def down
    remove_foreign_key :tasks, column: :executer_id
    remove_reference :tasks, :executer
  end
end
