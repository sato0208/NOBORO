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

  def rank
    # 選択しているジムの登れた課題ランキングが出したい。
    # このままだと全てのジムの登れた総数ランキングになってしまう
    @gym = Gym.find(params[:id])
    # ランキング機能
    # 1日から月末までを集計する
    # 見やすく書き直したい
    now = Time.current
    # done_taskテーブルのtask_idからgym_idを条件に検索したい　うまくいかない
    @rank_done_tasks = DoneTask.where(gym_id: @gym.id, created_at: (now.beginning_of_month)..(now.end_of_month)).group(:climber_id).order('count(task_id) desc').limit(10).pluck(:id)
    # 自分の順位
    @my_rank = 1
    @rank_done_tasks.each do |rank|
      break if rank.climber_id == current_climber.id
      @my_rank += 1
    end
  end

  def show
    @gym = Gym.find(params[:id])
    @tasks = @gym.tasks
    @grades_all = Grade.all
  end

  def favorites
    # gym_favorites = climberモデルに記述.gymモデルを参照する
    @gyms = current_climber.gym_favorites.includes(:climber).recent
  end

  def search
    @genres = Genre.all
    # 値が入力されていれば、whereメソッドと部分一致検索で、店舗情報を取得する。
    @gyms = if params[:gym_name]
              Gym.where('gym_name LIKE ?', "%#{params[:gym_name]}%")
            else
              Gym.all
    end
  end

  private

  def gym_params
    params.require(:gym).permit(:genre_id, :description, :gym_name, :post_code, :address, :gym_url, :gym_image)
  end
end