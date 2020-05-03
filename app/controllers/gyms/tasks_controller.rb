class Gyms::TasksController < ApplicationController
  def index
    @tasks = Task.all
    @new_task = Task.new
    @grades = Grade.all
  end

  def update
  end

  def create
    @tasks = Task.all
    @new_task = Task.new(task_params)
    @new_task.gym_id = current_gym.id
    if @new_task.save
    redirect_to request.referer, notice: "successfully created Task!"
    end
  end

  def new
  end

  def edit
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to request.referer, notice: "successfully delete Task!"

  end

  private
    def task_params
      params.require(:task).permit(:gym_id, :task_name, :grade_id)
    end
end
