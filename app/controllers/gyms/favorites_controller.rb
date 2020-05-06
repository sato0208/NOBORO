class Gyms::FavoritesController < ApplicationController
  def index
    @favorites = current_gym.favorites
  end
  private

  def favorite_params
    params.require(:favorite).permit(:climber_id, :gym_id)
  end
end
