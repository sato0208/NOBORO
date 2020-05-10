class Battle < ApplicationRecord
  belongs_to :climber
  belongs_to :battler, class_name: 'Climber'
  has_many :battles, dependent: :destroy


  # 通知機能
  def create_notification_by(current_climber)
    notification=current_climber.active_notifications.new(
      battle_id:self.id,
      visited_id:self.battler_id
    )
    notification.save if notification.valid?
  end
end
