class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :gym_id
      t.string :task_name
      t.integer :grade_id

      t.timestamps
    end
  end
end
