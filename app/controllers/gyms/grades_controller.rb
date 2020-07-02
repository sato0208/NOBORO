class Gyms::GradesController < ApplicationController
  before_action :authenticate_gym!

  def index
    @new_grade = Grade.new
    @grades = Grade.all
  end

  def update
    @grade = Grade.find(params[:id])
    if @grade.update(grade_params)
      redirect_to request.referrer || gyms_url, notice: 'successfully update Genre!'
    else
      redirect_to request.referrer || gyms_url
    end
  end

  def create
    @grade = Grade.all
    @new_grade = Grade.new(grade_params)
    if @new_grade.save
      redirect_to request.referrer || gyms_url, notice: 'successfully created Genre!'
    else
      @grades = Grade.all
        render :index
    end
  end

  def new
  end

  def edit
    @grade = Grade.find(params[:id])
    render 'edit'
  end

  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy
    redirect_to request.referrer || gyms_url, notice: 'successfully delete Grade!'
  end

  private

  def grade_params
    params.require(:grade).permit(:grade, :trophy_name, :trophy_image)
  end
end
