class TrophysController < ApplicationController
  def index
  end

  def create
    # DoneTaskテーブルからclimber_idがcrrent_climber.idと一致するものを探す
    # @done_task = DoneTask.where(climber_id: crrent_climber.id)
    # @new_trophy = Trophy.new
    # @new_trophy.climber_id = current_climber.id
    # @new_trophy.my_trophy_name = @grade.trophy_name
    # @new_trophy.my_trophy_image_id = @grade.my_trophy_image_id
    # @new_trophy.save
    # redirect_to request.referer, notice: "トロフィー#{@new_trophy.my_trophy_name}を獲得しました！"
  end

  private
  def trophie_params
    params.require(:trophie).permit(:climber_id, :my_trophy_name, :my_trophy_image_id)
  end
end
