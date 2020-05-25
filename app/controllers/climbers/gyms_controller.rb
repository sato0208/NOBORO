class Climbers::GymsController < ApplicationController
# authenticate_user！でログイン認証されてない場合home画面へリダイレクトとする
  before_action :authenticate_climber, {only: [:favorites]}
  def index
    # binding.pry
    @gyms = Gym.all.page(params[:page]).per(6)
    @genres = Genre.all
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
      @gyms = @genre.gyms.page(params[:page]).order('updated_at DESC').page(params[:page]).per(6)
    else
      @gyms = Gym.page(params[:page]).order('updated_at DESC').page(params[:page]).per(6)
    end
  end

  def rank
    @gym = Gym.find(params[:id])
    # ランキング機能
    # 1日から月末までを集計する
    # 見やすく書き直したい
    # ジムの中の登れた課題ランキング
    now = Time.current
    # done_taskテーブルのtask_idからgym_idを条件に検索
    @gym_done_tasks = DoneTask.where(
      task_id: Task.where(gym_id: @gym.id).pluck(:id),
      created_at: (now.beginning_of_month)..(now.end_of_month)
    )
    .group(:climber_id)
    .order('count(task_id) desc')
    .limit(10)
    # 自分の順位
    @gym_my_rank = 1
    # @rank_done_task（多い順に並んでいる）にあるclimber_idとcurrent_climber.idが一致するまで1ずつ増やすことで順位を出す
    @gym_done_tasks.each do |rank|
      break if rank.climber_id == current_climber.id
      @gym_my_rank += 1
    end

    # 全ジムの登れた課題ランキング
    @all_done_tasks = DoneTask.find(DoneTask.where(created_at:(now.beginning_of_month)..(now.end_of_month)).group(:climber_id).order('count(task_id) desc').limit(30).pluck(:id))
    # 自分の順位
    @all_my_rank = 1
    @all_done_tasks.each do |rank|
      break if rank.climber_id == current_climber.id
      @all_my_rank += 1
    end

    # フォロワーの登れた課題ランキング
    # @fallow_done_tasks =DoneTasks.

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
              Gym.where('gym_name LIKE ?', "%#{params[:gym_name]}%").page(params[:page]).per(6)
            else
              Gym.all.page(params[:page]).per(6)
            end
  end

  private
  def gym_params
    params.require(:gym).permit(:genre_id, :description, :gym_name, :post_code, :address, :gym_url, :gym_image)
  end
end