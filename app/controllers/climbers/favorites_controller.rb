class Climbers::FavoritesController < ApplicationController
  def create
    favorite = current_climber.favorites.build(gym_id: params[:gym_id])
    favorite.save!
    redirect_to request.referer
  end

  def destroy
    favorite = current_climber.favorites.find_by(gym_id: params[:gym_id])
    favorite.destroy
    redirect_to request.referer
  end

  def index
    @favorites = current_climber.favorites
  end

  private
  def favorite_params
    params.require(:favorite).permit(:climber_id, :gym_id)
  end

  def redirect
    case params[:redirect_id].to_i
    when 0
      redirect_to gyms_path
    when 1
      redirect_to gym_path(@gym)
    end
  end
end