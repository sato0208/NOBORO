class Task < ApplicationRecord
  belongs_to :gym
  belongs_to :grade
  has_many :done_tasks, dependent: :destroy

  def achieved?(climber)
    self.done_tasks.where(climber_id: climber.id).exists?
    # done_tasksテーブルの中のtask_idが既に入っている状態
  end
end