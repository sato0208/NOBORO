class Climbers::ClimbersController < ApplicationController
  before_action :authenticate_climber!
  before_action :set_climber, only: %i[show edit update following follower trophy]

  def show
    now = Time.current
    @favorites = Favorite.where(climber_id: @climber.id)
    @new_battle = Battle.new
    @notifications = current_climber.passive_notifications.page(params[:page]).per(10)
    # battleのidを渡す
    ＠unbattle = Battle.find_by(battler_id: @climber.id)
  end

  def index
    @climbers = Climber.all.page(params[:page]).per(8)
    if params[:name].present?
      @climbers_search = Climber.where('name LIKE ?', "%#{params[:name]}%")
    else
      @climbers_search = Climber.all.page(params[:page]).per(8)
    end
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

  def search
    if params[:name].present?
      @climbers = Climber.where('name LIKE ?', "%#{params[:name]}%")
    else
      @climbers = Climber.all.page(params[:page]).per(8)
    end
  end

  private
  def set_climber
    @climber = Climber.find(params[:id])
  end

  def climber_params
    params.require(:climber).permit(:name, :profile_image, :email, :introduction)
  end
end
