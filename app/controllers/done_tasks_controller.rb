require "uri"
class DoneTasksController < ApplicationController
	before_action :authenticate_climber!

  def index
    now = Time.current
    # 全ジムの登れた課題ランキング
    @all_done_tasks = DoneTask.find(
      DoneTask.where(
        created_at:(now.beginning_of_month)..(now.end_of_month))
        .group(:climber_id)
        .order('count(task_id) desc')
        .limit(30)
        .pluck(:id))
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
        # 登れた課題のtaskのidの数とそのgradeの全部のtaskの数が同じ場合トロフィーを獲得する
        if done_tasks.count == task_ids.count
          @new_trophy = Trophy.new
          @new_trophy.climber_id = current_climber.id
          @new_trophy.my_trophy_name = grade.trophy_name
          if Rails.env == "production"
            target_path = "https://aws-and-infra-noboro.s3-ap-northeast-1.amazonaws.com/store/" + grade.trophy_image.id
            File.open(target_path) do |file|
              @new_trophy.my_trophy_image = file
            end
          else
            # refileへの登録　@new_trophy.my_trophy_image_id = grade.trophy_image_id
            target_path = grade.trophy_image.backend.directory + '/' + grade.trophy_image.id
            File.open(target_path) do |file|
              @new_trophy.my_trophy_image = file
            end
          end

          if @new_trophy.save
            render 'modal'
          else
          end
        else
        end
    end
  end

  def destroy
    @new_done_task = DoneTask.new
    @delete_done_task = DoneTask.find(params[:id])
    @task = Task.find(@delete_done_task.task_id)
    @delete_done_task.destroy
  end

  private
  def done_task_params
    params.require(:done_task).permit(:task_id, :climber_id)
  end
end
