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
    # done_taskをsaveするときに
    # binding.pry
    if @new_done_task.save
      # @new_done_task に入っている task_idのgradeを取得
        grade = @new_done_task.task.grade
        # @new_done_taskに対するtask_idのgymを取得
        gym = @new_done_task.task.gym
        # taskテーブルからgym_id && grade_id が一致する task.idを全て持ってくる
        task_ids = Task.where(gym_id: gym.id, grade_id: grade.id).pluck(:id)
        # 自分が今まで達成したtaskの中から32行目でとってきた同じジムの同じtaskのgradeがあるかをwhereで探す
        done_tasks = current_climber.done_tasks.where(task_id: task_ids)
        # done_taskの中にtaskが全部あるかをチェック
        # 32行目でとってきたtaskと34行目でとってきたtaskの中身の数が一緒であれば全て達成したことになる。
        # binding.pry
        if done_tasks.count == task_ids.count
          @new_trophy = Trophy.new
          @new_trophy.climber_id = current_climber.id
          @new_trophy.my_trophy_name = grade.trophy_name
          @new_trophy.my_trophy_image_id = grade.trophy_image_id
          @new_trophy.save
          redirect_to request.referer, notice: "トロフィー#{@new_trophy.my_trophy_name}を獲得しました！"
        else
          redirect_to request.referer, notice: "課題 #{@new_done_task.task.task_name}が登れました!"
        end
    end
  end

  def destroy
    @delete_done_task = DoneTask.find(params[:id])
    @delete_done_task.destroy
    redirect_to request.referer, notice: "課題 #{@delete_done_task.task.task_name}を取り消しました"
  end

  private

  def done_task_params
    params.require(:done_task).permit(:task_id, :climber_id)
  end
end
