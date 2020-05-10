class NotificationsController < ApplicationController
  def show
  end

  def update
  end

  def create
  end

  def destroy
  end

  def index
    @notifications = current_climber.passive_notifications.page(params[:page]).per(10)
    @notifications.where(checked: false).each do |notification|
    notification.update_attributes(checked: true)
  end
private
def notification_params
  params.require(:notification).permit(:visiter_id, :visited_id, :confirm_status, :is_checked_status, :battle_id)
end
end