class Task < ApplicationRecord
  belongs_to :gym
  belongs_to :grade
  has_many :done_tasks, dependent: :destroy

  validates :task_name, presence: true


  def achieved?(climber)
    done_tasks.where(climber_id: climber.id).exists?
  end
end
