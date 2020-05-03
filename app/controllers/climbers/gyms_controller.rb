class Climbers::GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
  end

  def search
  end

  private
    def gym_params
      params.require(:gym).permit(:genre_id, :description, :gym_name, :post_code, :address, :gym_url)
    end
end