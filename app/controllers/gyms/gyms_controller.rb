class Gyms::GymsController < ApplicationController
  def edit
    @gym = Gym.find(params[:id])
  end

  def update
  end

  private
    def gym_params
      params.require(:gym).permit(:genre_id, :description, :gym_name, :post_code, :address, :gym_url)
    end
end
