class Gyms::ClimbersController < ApplicationController
  def index
    @climbers = Climber.all
  end

  private
  def climber_params
    params.require(:climber).permit(:name, :profile_image, :introduction, :email)
  end
end
