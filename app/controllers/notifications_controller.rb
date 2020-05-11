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
  end


# # カートへ戻る
#       if params[:back].present?
#             render 'cart_items/index'
#         return
#     # 情報入力へ戻る
#       elsif params[:info].present?
#               @ship = Ship.where(customer_id: current_customer.id)
#             render 'orders/new'
#         return
#       end





  # updateして条件が制作完了の場合発送準備中に値をupdateする
  #   @order_item.update(order_item_params)
  #     @order_item.order.order_items.each_with_index do |o_i, index|
  #     unless o_i.product_status=="製作完了"
  #       break
  #       end
  #       if index == @order_item.order.order_items.size - 1
  #         @order_item.order.update(status: "発送準備中")
  #       end
  #     end

  # 条件指定してupdateアクションを行う
  #     if current_customer.cart_items.where(item_id: @cart_item.item_id).exists?
  #       # 個数を合算する
  #       @cart_item = current_customer.cart_items.find_by(item_id: @cart_item.item_id)
  #       # （カラムを指定　現在のアイテムの量　＋　送られてきたパラメータの値）
  #       @cart_item.update(item_quantity: @cart_item.item_quantity + params[:cart_item][:item_quantity].to_i)
  #     else
  #       @cart_item.save
  #     end
  # パラメータに送られてきた値で条件分岐する
  #       if params[:ship_num] == "1"
  #         @order_postcode = current_customer.post_code
  #         @order_address = current_customer.address
  #         @order_name = (current_customer.last_name) + (current_customer.first_name)
  #       # 登録済みの配送先
  #       elsif params[:ship_num] == "2"
  #         @order_postcode = Ship.find(params[:ship_id]).view_ship_code
  #         @order_address = Ship.find(params[:ship_id]).view_ship_address
  #         @order_name = Ship.find(params[:ship_id]).view_ship_name
  #       # 新しい配送先
  #       else
  #         @order_postcode = params[:order][:ship_postcode]
  #         @order_address = params[:order][:ship_address]
  #         @order_name = params[:order][:ship_name]
  #         render 'orders/new' if @order_new.invalid?
  #       end
  # end

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