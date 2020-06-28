class Gyms::GymsController < ApplicationController
  before_action :authenticate_gym!
  before_action :ensure_correct_gym, {only: [:edit,:update]}

  def edit
    @gym = Gym.find(params[:id])
    @genres = Genre.all
  end

  def update
    @gym = Gym.find(params[:id])
    if @gym.update(gym_params)
      redirect_to request.referrer || root_url
    else
      @genres = Genre.all
      render :edit
    end
  end

  private
  # ※カレントユーザー以外は直接リンクを入力しても編集ページにいけないようにする
  def ensure_correct_gym
    @gym = Gym.find(params[:id])
    if current_gym.id != @gym.id
      redirect_to edit_gyms_gym_path(current_gym)
    end
  end
  def gym_params
    params.require(:gym).permit(:genre_id, :email, :description, :gym_name, :post_code, :address, :gym_url, :phone_number, :gym_image)
  end
end
