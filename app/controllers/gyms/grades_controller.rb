class Gyms::GradesController < ApplicationController
  def index
    @new_grade = Grade.new
    @grades = Grade.all
  end

  def update
    @grade = Grade.find(params[:id])
    if @grade.update(grade_params)
      redirect_to request.referer, notice: "successfully update Genre!"
    else
      redirect_to request.referer
    end
  end

  def create
    @grade = Grade.all
    @new_grade = Grade.new(grade_params)
    @new_grade.save
    redirect_to request.referer, notice: "successfully created Genre!"
  end

  def new
  end

  def edit
    @grade = Grade.find(params[:id])
  end

  def destroy
    @grade = Grade.find
    @grade.destroy
    redirect_to request.referer, notice: "successfully delete Grade!"
  end

  private
    def grade_params
      params.require(:grade).permit(:grade,:trophy_name,:trophy_image)
    end
end
