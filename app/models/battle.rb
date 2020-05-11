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

  # battle 申請中画面にnotification の confirm_statusが"未確認"のものを表示させる
  def not_confirm_notifications_by(current_climber)
    notification = current_climber.active_notifications.where(
    confirm_status: "未確認"
  )
  end