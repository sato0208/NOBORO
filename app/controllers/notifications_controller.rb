class NotificationsController < ApplicationController
  def show
  end

  def update
    @update_notification = Notification.find(params[:id])
    @update_notification.update(notification_params)
      # binding.pry
      # ここのif文がうまく通らない
    if params[:confirm_status] == "承認"
    # if params[:notification] => (:confirm_status "承認")
    # if params[:"承認"].present?
      @update_notification.update(confirm_status: "承認")
      @update_notification.battle.update(is_valid_status: true)
      #   end
      # end
      flash[:notice] = "バトルを承認しました"
    end
    # end
    if params[:confirm_status] == "拒否"
      # binding.pry
      @update_notification.update(confirm_status: "拒否")
      @update_notification.battle.destroy
      flash[:notice] = "バトルを拒否しました"
    end
    # 承認か拒否を押したら通知を削除する
    # @update_notification.destroy
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