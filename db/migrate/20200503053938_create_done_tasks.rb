class CreateDoneTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :done_tasks do |t|
      t.integer :climber_id
      t.integer :task_id

      t.timestamps
    end
  end
end
