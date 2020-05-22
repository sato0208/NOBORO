class Climbers::ClimbersController < ApplicationController

# authenticate_user！でログイン認証されてない場合home画面へリダイレクトとする
	before_action :authenticate_climber!
	# カレントユーザーだけしかedit,update,destroyアクションは使えない。
	# before_action :ensure_correct_climber, {only: [:edit, :update]}

  def show
    @climber = Climber.find(params[:id])
    now = Time.current
    @trophys = Trophy.where(climber_id: @climber.id,created_at: (now.beginning_of_month)..(now.end_of_month)).group(:climber_id)
    @favorites = Favorite.where(climber_id: @climber.id)
    @new_battle = Battle.new
    # passive_notifications = 送られる側 visited_id
    @notifications = current_climber.passive_notifications.page(params[:page]).per(10)
    # battleのidを渡す
    ＠unbattle = Battle.find_by(battler_id: @climber)
    # # part2
    # @targetClimber = Climber.find(2)
    # Climber.unfollow(@targetClimber)
  end

  def index
    @climbers = Climber.all
  end

  def edit
    @climber = Climber.find(params[:id])
  end

  def update
    @climber = Climber.find(params[:id])
    if @climber.update(climber_params)
      redirect_to climber_path(@climber), notice: 'プロフィールをupdateしました！'
    else
      redirect_to request.referer
    end
  end

  # フォローしている人
  def following
    @climber = Climber.find(params[:id])
    @climbers = @climber.followings
    render 'show_follow'
  end

  # フォローしてくれてる人
  def follower
    @climber = Climber.find(params[:id])
    @climbers = @climber.followers
    render 'show_follower'
  end

  def trophy
    @climber = Climber.find(params[:id])
    @trophys = Trophy.where(climber_id: @climber.id).page(params[:page]).per(6)
  end

  private

  def climber_params
    params.require(:climber).permit(:name, :profile_image, :email, :introduction)
  end
end
