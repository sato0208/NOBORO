class Gyms::GymsController < ApplicationController
  def edit
    @gym = Gym.find(params[:id])
    @genres = Genre.all
  end

  def update
    @gym = Gym.find(params[:id])
    @gym.update(gym_params)
    redirect_to request.referer
  end

  private
    def gym_params
      params.require(:gym).permit(:genre_id, :description, :gym_name, :post_code, :address, :gym_url,:phone_number)
    end
end
