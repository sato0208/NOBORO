class Gym < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  attachment :gym_image

  has_many :tasks, dependent: :destroy
  has_many :infos, dependent: :destroy
  belongs_to :genre
  has_many :favorites, dependent: :destroy
  validates :gym_name, presence: true

  # お気に入り登録しているか判定
  def favorite_by?(climber)
    favorites.where(climber_id: climber.id).exists?
  end

  def self.search(search)
    return Gym. unless search
    Gym.where(['content LIKE ?', "%#{search}%"])
  end

  # ジムごとの登れた課題ランキング
  def gym_done_tasks_by
    now = Time.current
    DoneTask.where(
      task_id: Task.where(gym_id: self.id).pluck(:id),
      created_at: (now.beginning_of_month)..(now.end_of_month))
    .group(:climber_id)
    .order('count(task_id) desc')
    .limit(10)
  end
end
