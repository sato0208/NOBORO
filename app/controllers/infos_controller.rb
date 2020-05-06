class InfosController < ApplicationController
  def index
    @infos = Info.all
  end

  def show
    @gyms = Info.find(params[:id]).gyms
    @infos = Info.all
    @infos = @infos.map do |info|
      info.gyms = []
      @gyms.each do |gym|
        if info.gym_id == gym.id
          info.gyms.push(gym)
        end
      end
    end
  end

  private
  def info_params
    params.require(:info).permit(:gym_id, :info)
  end
end