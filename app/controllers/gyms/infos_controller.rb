class Gyms::InfosController < ApplicationController
  before_action :authenticate_gym!

  def index
    @new_info = Info.new
    @infos = Info.all
  end

  def create
    @infos = Info.all
    @new_info = Info.new(info_params)
    @new_info.gym_id = current_gym.id
    if @new_info.save
      redirect_to request.referer, notice: 'お知らせを投稿しました!'
    else
      @infos = Info.all
        render :index
    end
  end

  def destroy
  end

  private
  def info_params
    params.require(:info).permit(:gym_id, :info)
  end
end
