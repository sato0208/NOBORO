class TasksController < ApplicationController
  def index
  end

  def show
  end

  private
    def task_params
      params.require(:task).permit(:gym_id, :task_name, :grade_id)
    end
end
