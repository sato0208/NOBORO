class Climbers::ClimbersController < ApplicationController
  before_action :authenticate_climber!
  before_action :set_climber, only: %i[show edit update following follower trophy]

  def show
    now = Time.current
    @trophys = Trophy.where(climber_id: @climber.id,created_at: (now.beginning_of_month)..(now.end_of_month)).group(:climber_id)
    @favorites = Favorite.where(climber_id: @climber.id)
    @new_battle = Battle.new
    @notifications = current_climber.passive_notifications.page(params[:page]).per(10)
    # battleのidを渡す
    ＠unbattle = Battle.find_by(battler_id: @climber.id)
  end

  def index
    @climbers = Climber.all
  end

  def edit
  end

  def update
    if @climber.update(climber_params)
      redirect_to climber_path(@climber), notice: 'プロフィールをupdateしました！'
    else
      redirect_to request.referer
    end
  end

  # フォローしている人
  def following
    @climbers = @climber.followings
    render 'show_follow'
  end

  # フォローしてくれてる人
  def follower
    @climbers = @climber.followers
    render 'show_follower'
  end

  def trophy
    @trophys = Trophy.where(climber_id: @climber.id).page(params[:page]).per(6)
  end

  private

  def set_climber
    @climber = Climber.find(params[:id])
  end

  def climber_params
    params.require(:climber).permit(:name, :profile_image, :email, :introduction)
  end
end
