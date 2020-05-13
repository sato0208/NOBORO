class Battle < ApplicationRecord
  belongs_to :climber
  belongs_to :battler, class_name: 'Climber'
  has_many :notification, dependent: :destroy

  # battleテーブルのステータスがtrueのもの全てを取得
  # scope :only_active -> {
  #   where(is_valid_status: true)
  # }
    # scope :done_tasks -> {
    #   climber.done_tasks.where(created_at: self.updated..self.finished_at)
    # }

  # battle レコード作成時にnotification レコードも作成する
  def create_notification_by(current_climber)
      notification = current_climber.active_notifications.new(
      battle_id: self.id,
      visited_id: self.battler_id,
      confirm_status: "未確認"
    )
    notification.save if notification.valid?
  end

# # battle レコード削除時にbattle_history レコードも作成する
  # def create_battle_history_iam_winner(current_climber)
  #   # カレントクライマーの登れた本数が相手より多い場合winnerに自分を登録
  #   if my_count == rival_count
  #   battle_history = current_climber.winner.new(
  #   winner_id: self.id,
  #   winner_count: my_count,
  #   loser_id: 対戦相手のid,
  #   loser_count: rival_count,
  #   is_draw_status: true,
  #   started_at: self.updated_at,
  #   finished_at: self.finish_at
  # )
  #   notification.save if notification.valid?
  # end
end