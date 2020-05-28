class Climbers::FavoritesController < ApplicationController
before_action :authenticate_climber!, :only => [:create, :destroy]
before_action :set_gym, only: %i[create destroy]
  # before_action :ensure_correct_climber, {only: [:create, :destroy, :index]}

  def create
    favorite = current_climber.favorites.build(gym_id: params[:gym_id])
    favorite.save!
  end

  def destroy
    favorite = current_climber.favorites.find_by(gym_id: params[:gym_id])
    favorite.destroy
  end

  def index
    @favorites = Favorite.where(climber_id: current_climber.id).page(params[:page]).per(10)
  end

  private
  def set_gym
    @gym = Gym.find(params[:gym_id])
  end

  def favorite_params
    params.require(:favorite).permit(:climber_id, :gym_id)
  end
end
