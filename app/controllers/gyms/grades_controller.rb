class Gyms::GradesController < ApplicationController
  def index
  end

  def update
  end

  def create
  end

  def new
  end

  def edit
  end

  def destroy
  end

  private
    def grade_params
      params.require(:grade).permit(:grade,:trophy_name,:trophy_image_id)
    end
end
