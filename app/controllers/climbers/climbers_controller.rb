class Climbers::ClimbersController < ApplicationController
  def show
  end

  def edit
    @climber = Climber.find(params[:id])
  end

  def update
    @climber = Climber.find(params[:id])
    @climber.update(climber_params)
    redirect_to request.referer, notice: "successfully delete Climber!"
  end

    private
    def climber_params
      params.require(:climber).permit(:name, :profile_image_id, :email)
    end
end
