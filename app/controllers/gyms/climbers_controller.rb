class Gyms::ClimbersController < ApplicationController
  before_action :authenticate_gym!

  def index
    @climbers = Climber.all
  end

  def destroy
    @climber = Climber.find(params[:id])
    @climber.destroy
    redirect_to request.referer, notice: 'ユーザーを退会させました'
  end

  private
  def climber_params
    params.require(:climber).permit(:name, :profile_image, :introduction, :email)
  end
end