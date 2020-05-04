class DoneTasksController < ApplicationController
  def index
    # ランキング機能
    @rank_done_tasks = DoneTask.find(DoneTask.group(:climber_id).order('count(task_id) desc').limit(3).pluck(:id))
  end

  def show
  end

  def update
  end

  def create
    @new_done_task = DoneTask.new(done_task_params)
    @new_done_task.climber_id = current_climber.id
    @new_done_task.save
    redirect_to request.referer, notice: "successfully created Gym!"
  end

  def destroy
    @delete_done_task = DoneTask.find(params[:id])
    # @delete_done_task = DoneTask.find_by(id: params[:id],task_id: params[:task_id])
    @delete_done_task.destroy
    redirect_to request.referer, notice: "successfully delete Task!"
  end



  private
    def done_task_params
      params.require(:done_task).permit(:climber_id, :task_id)
    end
end
