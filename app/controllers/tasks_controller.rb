class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
    @genres = Genre.all
  end

  def show
    @task = Task.find(params[:id])
    @done_tasks = @task.done_tasks
    @new_done_task = DoneTask.new
    # 現在のクライマーのdone_tasksテーブルの中のtask_idが表示されてる@taskと同じものがあるか探す
    @delete_done_task = current_climber.done_tasks.find_by(task_id: @task.id)
  end

  private
    def task_params
      params.require(:task).permit(:gym_id, :task_name, :grade_id)
    end
end