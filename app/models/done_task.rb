class DoneTask < ApplicationRecord
  belongs_to :climber
  belongs_to :task

  # ジムごとに登れた本数が多いクライマー順に並べる
  def count_per_gym
    # 今の時間を出す
    now = Time.current
    # DoneTaskテーブルから探す。以下条件
    DoneTask.where(
      # DoneTaskテーブルの task_id と Taskテーブルの中のgym_id からviewのrank_done_taskにひもずくtaskのgym_idが一致するもののidをとってくる。かつ
      task_id: Task.where(gym_id: self.task.gym_id).pluck(:id),
      # 日付は月初から月末まで、かつ
      created_at: (now.beginning_of_month)..(now.end_of_month),
      # DoneTaskテーブルの task_id と viewのrank_done_taskのclimber_idが同じものを条件として探す
      climber_id: self.climber_id
    ).count
  end

    # 全ジムの登れた課題ランキング
  def all_done_tasks_by
    now = Time.current
    DoneTask.find(
    DoneTask.where(
    created_at:(now.beginning_of_month)..(now.end_of_month))
    .group(:climber_id)
    .order('count(task_id) desc')
    .limit(30)
    .pluck(:id))
  end

    # 自分の順位
  def all_my_rank_by
    all_my_rank = 1
    all_done_tasks_by.each do |rank|
    break if rank.climber_id == current_climber.id
      all_my_rank += 1
    end
  end
end