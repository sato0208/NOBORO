class NotificationsController < ApplicationController
	before_action :authenticate_climber!

  def show
  end

  def update
    @update_notification = Notification.find(params[:id])
    @update_notification.update(notification_params)
    if params[:notification][:confirm_status] == "承認"
      update_notification_is_battle(@update_notification)
      @update_notification.destroy
      redirect_to battles_path, notice: "バトルを承認しました"
    end
    if params[:notification][:confirm_status] == "拒否"
      @update_notification.update(confirm_status: "拒否")
      @update_notification.battle.destroy
      redirect_to request.referrer || gyms_url, notice: "バトルを拒否しました"
    end
  end

  def create
  end

  def destroy
  end

  def index
    @notifications = current_climber.passive_notifications.page(params[:page]).per(6)
    notifications_checked_status_update(@notifications)
  end

private

  def notifications_checked_status_update(notifications)
    notifications.where(is_checked_status: false).each do |notification|
      notification.update(is_checked_status: true)
    end
  end

  def update_notification_is_battle(notification)
    notification = Notification.find(params[:id])
      notification.update(
        confirm_status: "承認",
        is_checked_status: true
      )
      notification.battle.update(
        finish_at: notification.battle.updated_at.next_day(3),
        is_valid_status: true,
      )
  end

  def notification_params
    params.permit(:visiter_id, :visited_id, :confirm_status, :is_checked_status, :battle_id)
  end
end