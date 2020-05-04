class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
    @genres = Genre.all
  end

  def show
    @task = Task.find(params[:id])
    @new_done_task = DoneTask.new
    @done_task = DoneTask.find(params[:task_id])
  end

  def destroy
    @done_task = DoneTask.find(params[:task_id])
    @delete_done_task = DoneTask.find(params[:id])
    @delete_done_task.destroy
    redirect_to request.referer, notice: "successfully delete Task!"
  end

  private
    def task_params
      params.require(:task).permit(:gym_id, :task_name, :grade_id)
    end
end