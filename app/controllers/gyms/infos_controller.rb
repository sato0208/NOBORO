class Gyms::InfosController < ApplicationController
  def index
  end

  def create
  end

  def destroy
  end

  private
    def info_params
      params.require(:info).permit(:gym_id, :info)
    end
end
