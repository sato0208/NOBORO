class Battle < ApplicationRecord
  belongs_to :climber
  belongs_to :battler, class_name: 'Climber'
  has_many :notification, dependent: :destroy

  # battle レコード作成時にnotification レコードも作成する
  def create_notification_by(current_climber)
      notification = current_climber.active_notifications.new(
      battle_id:self.id,
      visited_id:self.battler_id,
      confirm_status: "未確認"
    )
      notification.save if notification.valid?
      end
  end

  def battle_done_tasks(done_tasks)
    # current_climber.self.updated_atからfinish_atまでのdone_tasksをとりだしたい
    # done_tasks = current_climber.self.where("updated_at >= finish_at AND updated_at < finish_at", date, date + 1)
    done_tasks = current_climber.self.where(updated_at: search_date.finish_at)
  end