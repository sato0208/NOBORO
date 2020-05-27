class RelationshipsController < ApplicationController
  before_action :authenticate_climber!
  before_action :set_relationship, only: %i[create following follower destroy]

  def create
    # フォローされる側のID
    following = current_climber.follow(@climber.id)
    if following.save
      flash[:success] = 'ユーザーをフォローしました'
      redirect_to request.referer
    else
      flash.now[:alert] = 'ユーザーのフォローに失敗しました'
      redirect_to request.referer
    end
  end

  def following
  end

  def follower
  end

  def destroy
    following = current_climber.unfollow(@climber)
    if following.destroy
      flash[:success] = 'ユーザーのフォローを解除しました'
      redirect_to request.referer
    else
      flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
      redirect_to request.referer
    end
  end

  private
  def relationship_params
    params.require(:relationship).permit(:climber_id, :follow_id)
  end

  def set_relationship
    @climber = Climber.find(params[:follow_id])
  end
end
