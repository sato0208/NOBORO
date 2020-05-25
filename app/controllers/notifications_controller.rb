class NotificationsController < ApplicationController
	before_action :authenticate_climber!

  def show
  end

  def update
    # binding.pry
    @update_notification = Notification.find(params[:id])
    @update_notification.update(notification_params)
      # binding.pry
    if params[:notification][:confirm_status] == "承認"
      @update_notification.update(confirm_status: "承認")
      @update_notification.battle.update(is_valid_status: true)
      @update_notification.battle.update(finish_at: @update_notification.battle.updated_at.next_day(3))
      @update_notification.destroy
      redirect_to battles_path, notice: "バトルを承認しました"
    end
    if params[:notification][:confirm_status] == "拒否"
      @update_notification.update(confirm_status: "拒否")
      @update_notification.battle.destroy
      redirect_to request.referer, notice: "バトルを拒否しました"
    end
    # if params[:notification][:confirm_status] == "延長"
    #   @update_notification.update(confirm_status: "延長")
    #   @update_notification.battle.update(finish_at: @update_notification.battle.updated_at.next_day(3))
    #   redirect_to request.referer, notice: "バトルを3日延長しました"
    # end
  end

  def create
  end

  def destroy
  end

  def index
    # @update_notification = Notification.update
    @notifications = current_climber.passive_notifications.page(params[:page]).per(10)
    @notifications.where(is_checked_status: false).each do |notification|
      notification.update(is_checked_status: true)
    end 
  end

private
  def notification_params
    params.permit(:visiter_id, :visited_id, :confirm_status, :is_checked_status, :battle_id)
  end
end