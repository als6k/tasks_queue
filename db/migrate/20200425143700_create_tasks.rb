class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :task_type, null: false, limit: 3
      t.integer :status, default: 0, null: false, limit: 3
      t.json :params

      t.timestamps null: false
    end
  end
end
