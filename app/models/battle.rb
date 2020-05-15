class Battle < ApplicationRecord
  belongs_to :climber
  belongs_to :battler, class_name: 'Climber'
  has_many :notification, dependent: :destroy

  # battleテーブルのステータスがtrueのもの全てを取得
  # scope :only_active, -> {
  #   where(is_valid_status: true)
  # }
    # scope :done_tasks, -> {
    #   climber.done_tasks.where(created_at: self.updated..self.finished_at)
    # }

  # battle レコード作成時にnotification レコードも作成する
  def create_notification_by(current_climber)
      notification = current_climber.active_notifications.new(
      battle_id: self.id,
      visited_id: self.battler_id,
      confirm_status: "未確認"
    )
    notification.save if notification.valid?
  end

  # 自分がバトルを申し込んだ場合の登れた課題全て
  def done_task_climber_by
    done_task = DoneTask.where(climber_id: Climber.find(self.climber.id))
    battle_done_task = done_task.where(created_at: self.updated_at..self.finish_at)
  end

  # 自分がバトルを申し込まれた場合の登れた課題全て
  def done_task_battler_by
    done_task = DoneTask.where(climber_id: Climber.find(self.battler.id))
    battle_done_task = done_task.where(created_at: self.updated_at..self.finish_at)
  end
end