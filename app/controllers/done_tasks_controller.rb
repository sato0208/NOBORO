class DoneTasksController < ApplicationController
  def index
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

  private
    def done_task_params
      params.require(:done_task).permit(:climber_id, :task_id)
    end
end
