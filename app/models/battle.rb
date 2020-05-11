class Battle < ApplicationRecord
  belongs_to :climber
  belongs_to :battler, class_name: 'Climber'
  has_many :notification, dependent: :destroy

  # 通知機能
  # active_notifications　= foreign_key: "visiter_id"
  def create_notification_by(current_climber)
      notification = current_climber.active_notifications.new(
      battle_id:self.id,
      visited_id:self.battler_id,
      confirm_status: "未確認"
    )
    notification.save if notification.valid?
  end
end