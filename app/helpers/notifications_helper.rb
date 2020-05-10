module NotificationsHelper
  # 通知機能
  def unchecked_notifications
    @notifications = current_climber.passive_notifications.where(checked: false)
  end
end
