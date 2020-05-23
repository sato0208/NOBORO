class DoneTasksController < ApplicationController
  def index
    now = Time.current
    # 全ジムの登れた課題ランキング
    @all_done_tasks = DoneTask.find(DoneTask.where(created_at:(now.beginning_of_month)..(now.end_of_month)).group(:climber_id).order('count(task_id) desc').limit(30).pluck(:id))
    # 自分の順位
    @all_my_rank = 1
    @all_done_tasks.each do |rank|
      break if rank.climber_id == current_climber.id
      @all_my_rank += 1
    end
  end

  def show
  end

  def update
  end

  def create
    # あとでリファクタリングする。モデルに記述して短くする
    @new_done_task = DoneTask.new(done_task_params)
    @task = Task.find(@new_done_task.task_id)
    @new_done_task.climber_id = current_climber.id
    if @new_done_task.save
      # @new_done_task に入っている task_idからgradeを取得
        grade = @new_done_task.task.grade
        # @new_done_taskに対するtask_idのgymを取得
        gym = @new_done_task.task.gym
        # donetask.newしたtaskに紐ずくgymの一つのgradeのtask全てを取得（taskテーブルからgym_id && grade_id が一致する task.idを全て持ってくる）
        task_ids = Task.where(gym_id: gym.id, grade_id: grade.id).select(:id)
        # 自分に紐ずくdone_taskの中から@new_done_taskのtask.idに紐ずくtaskを全て取得（32行目でとってきた同じジムの同じtaskのgradeがあるかをwhereで探す）
        done_tasks = current_climber.done_tasks.where(task_id: task_ids)
        # done_taskの中にtaskが全部あるかをチェック
        # 32行目でとってきたtaskと34行目でとってきたtaskの中身の数が一緒であれば全て達成したことになる。
        # binding.pry
        # 登れた課題のtaskのidの数とそのgradeの全部のtaskの数が同じ場合トロフィーを獲得する
        if done_tasks.count == task_ids.count
          @new_trophy = Trophy.new
          @new_trophy.climber_id = current_climber.id
          @new_trophy.my_trophy_name = grade.trophy_name
          @new_trophy.my_trophy_image_id = grade.trophy_image_id
          # binding.pry
            if @new_trophy.save
              # binding.pry
              flash.now[:notice] = "トロフィー#{@new_trophy.my_trophy_name}を獲得しました！"
              #redirect_to request.referer, notice: "トロフィー#{@new_trophy.my_trophy_name}を獲得しました！"
            else
              redirect_to request.referer, notice: "同じトロフィーは獲得できません"
            end
        else
          flash.now[:notice] = "課題 #{@new_done_task.task.task_name}が登れました!"
          render 'create'
          #redirect_to request.referer, notice: "課題 #{@new_done_task.task.task_name}が登れました!"
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
