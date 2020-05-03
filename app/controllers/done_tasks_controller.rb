class DoneTasksController < ApplicationController
  def index
  end

  def show
  end

  def update
  end

  def create
  end

  private
    def done_task_params
      params.require(:done_task).permit(:climber_id, :task_id)
    end
end
