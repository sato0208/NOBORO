module NotificationsHelper
  # current_climber が通知"未確認"のもの
  def unchecked_notifications
    @notifications = current_climber.passive_notifications.where(is_checked_status: false)
  end
end
