class Gyms::TasksController < ApplicationController
  before_action :authenticate_gym!

  def index
    @tasks = current_gym.tasks
    @new_task = Task.new
    @grades_all = Grade.all
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to gyms_tasks_path, notice: 'successfully update Task!'
  end

  def create
    @tasks = Task.all
    @new_task = Task.new(task_params)
    @new_task.gym_id = current_gym.id
    if @new_task.save
      redirect_to request.referer, notice: 'successfully created Task!'
    else
      @tasks = current_gym.tasks
      @grades_all = Grade.all
        render :index
    end
  end

  def edit
    @task = Task.find(params[:id])
    @genres = Genre.all
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to request.referer, notice: 'successfully delete Task!'
  end

  private

  def task_params
    params.require(:task).permit(:gym_id, :task_name, :grade_id)
  end
end
