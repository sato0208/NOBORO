class GradesController < ApplicationController
  def index
  end

  def show
  end

  private
  def grade_params
    params.require(:grade).permit(:grade, :trophy_name, :trophy_image_id)
  end
end
