class Gyms::ClimbersController < ApplicationController
  def index
  end

    private
    def climber_params
      params.require(:climber).permit(:name, :profile_image_id)
    end
end
