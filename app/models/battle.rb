class Battle < ApplicationRecord
  belongs_to :climber
  belongs_to :battler, class_name: 'Climber'

  # 通知機能
  def create_notification_by(current_climber)
    notification=current_climber.active_notifications.new(
      battle_id:self.id,
      visited_id:self.current_climber.id,
      action:"like"
    )
    notification.save if notification.valid?
  end
end
