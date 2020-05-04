class DoneTasksController < ApplicationController
  def index
    # ランキング機能
    # 1日から月末までを集計する
    # 見やすく書き直したい
    now = Time.current 
    @rank_done_tasks = DoneTask.find(DoneTask.where(created_at:(now.beginning_of_month)..(now.end_of_month)).group(:climber_id).order('count(task_id) desc').limit(3).pluck(:id))
    # 自分の順位
      @my_rank = 1
      @rank_done_tasks.each do |rank|
        if rank.climber_id == current_climber.id
          break
        end
        @my_rank = @my_rank + 1
      end
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
    @delete_done_task.destroy
    redirect_to request.referer, notice: "successfully delete Task!"
  end



  private
    def done_task_params
      params.require(:done_task).permit(:climber_id, :task_id)
    end
end
