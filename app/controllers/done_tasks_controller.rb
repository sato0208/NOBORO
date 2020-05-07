class DoneTasksController < ApplicationController
  def index
    # ランキング機能
    # 1日から月末までを集計する
    # 見やすく書き直したい
    now = Time.current
    @rank_done_tasks = DoneTask.find(DoneTask.where(created_at: (now.beginning_of_month)..(now.end_of_month)).group(:climber_id).order('count(task_id) desc').limit(3).pluck(:id))
    # 自分の順位
    @my_rank = 1
    @rank_done_tasks.each do |rank|
      break if rank.climber_id == current_climber.id
      @my_rank += 1
    end
  end

  def show
  end

  def update
  end

  def create
    @new_done_task = DoneTask.new(done_task_params)
    @new_done_task.climber_id = current_climber.id
    # もしdone_taskをsaveするときに
    if @new_done_task.save
      # @new_done_task に入っている task_idのgradeを取得
        grade = @new_done_task.task.grade
        # @new_done_taskに対するtask_idのgymを取得
        gym = @new_done_task.task.gym
        # 課題テーブルからgym && grade が一致する task_idを全て持ってくる
        task_ids = Task.where.(gym_id: gym.id, grade_id: grade.id).pluck(:id)
        # 自分が今まで達成したtaskの中から32行目でとってきた同じジムの同じtaskのgradeがあるかをwhereで探す
        done_tasks = current_climber.done_tasks.where(tasks_id: task_ids)
        # done_taskの中にtaskが全部あるかをチェック
        # 32行目でとってきたtaskと34行目でとってきたtaskの中身の数が一緒であれば全て達成したことになる。
        if done_tasks.count == task_ids.count
          redirect_to request.referer
          @trophy_new = Trophy.new
        else
          redirect_to request.referer
        end
    end
  end

  def destroy
    @delete_done_task = DoneTask.find(params[:id])
    @delete_done_task.destroy
    redirect_to request.referer, notice: 'successfully delete Task!'
  end

  private

  def done_task_params
    params.require(:done_task).permit(:task_id, :climber_id)
  end
end
