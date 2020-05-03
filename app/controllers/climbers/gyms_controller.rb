class Climbers::GymsController < ApplicationController
  def index
    @gyms = Gym.all
    @genres = Genre.all
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
      @gyms = @genre.gyms.page(params[:page]).per(8).order('updated_at DESC')
    else
      @gyms = Gym.page(params[:page]).per(8).order('updated_at DESC')
    end
  end

  def show
  end

  def search
  end


# 検索用
def search
  @genres = Genre.all
  @how_search = params[:choice]
  if how_search == "1"
    @gyms = Gym.search(params[:search])
  end
end


  private
    def gym_params
      params.require(:gym).permit(:genre_id, :description, :gym_name, :post_code, :address, :gym_url)
    end
end