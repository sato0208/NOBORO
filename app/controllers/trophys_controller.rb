class TrophysController < ApplicationController
  def index
  end

  def create
    # DoneTaskテーブルからclimber_idがcrrent_climber.idと一致するものを探す
    @done_task = DoneTask.where(climber_id: crrent_climber.id)
    @new_trophy = Trophy.new
    if @trophy.save
      @done_task.each do
      end
    end
    redirect_to request.referer
  end

  private
  def trophie_params
    params.require(:trophie).permit(:climber_id, :my_trophy_name, :my_trophy_image_id)
  end
end
