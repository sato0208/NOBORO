class InfosController < ApplicationController
  before_action :authenticate_climber!

  def index
    @infos = Info.all
  end

  def show
    @gyms = Info.find(params[:id]).gyms
    @infos = Info.all
  end

  private
  def info_params
    params.require(:info).permit(:gym_id, :info)
  end
end