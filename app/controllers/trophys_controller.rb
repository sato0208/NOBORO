class TrophysController < ApplicationController
	before_action :authenticate_climber!

  def index
  end

  def create
  end

  private
  def trophie_params
    params.require(:trophie).permit(:climber_id, :my_trophy_name, :my_trophy_image)
  end
end