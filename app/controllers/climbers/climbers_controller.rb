class Climbers::ClimbersController < ApplicationController
  def show
    @climber = Climber.find(params[:id])
    @favorite = Favorite.find_by(climber_id: @climber.id)
    end
  end

  def edit
    @climber = Climber.find(params[:id])
  end

  def update
    @climber = Climber.find(params[:id])
    @climber.update(climber_params)
    redirect_to request.referer, notice: 'successfully delete Climber!'
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

  private

  def climber_params
    params.require(:climber).permit(:name, :profile_image, :email, :introduction)
  end
end
