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
    @gym = Gym.find(params[:id])
    @tasks = Gym.find(params[:id]).tasks
    @grades = Grade.all
    # グレードに紐ずくtaskを取り出して表示させたい。
  end

  def search
  end

  def search
    @genres = Genre.all
    # 値が入力されていれば、whereメソッドと部分一致検索で、店舗情報を取得する。
    if params[:gym_name]
      @gyms = Gym.where('gym_name LIKE ?', "%#{params[:gym_name]}%")
    else
      @gyms = Gym.all
    end
  end

  private
    def gym_params
      params.require(:gym).permit(:genre_id, :description, :gym_name, :post_code, :address, :gym_url,:gym_image)
    end
end