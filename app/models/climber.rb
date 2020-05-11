class Climber < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  has_many :done_tasks, dependent: :destroy
  has_many :trophies, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :gym_favorites, through: :favorites, source: :gym

  # バトル機能
  has_many :battles, class_name: 'Battle', foreign_key: 'climber_id'
  has_many :battler, class_name: 'Battle', foreign_key: 'battler_id'
  # 通知機能
  # 送る側
  has_many :active_notifications, class_name: "Notification", foreign_key: "visiter_id", dependent: :destroy
  # 送られる側
  has_many :passive_notifications, class_name: "Notification", foreign_key: "visited_id", dependent: :destroy

  # フォロー、フォロワー機能
  has_many :relationships, class_name: 'Relationship', foreign_key: 'climber_id'
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  # フォローされている数
  has_many :followers, through: :reverse_of_relationships, source: :climber
  # フォローしてる数
  has_many :followings, through: :relationships, source: :follow

  def follow(other_climber)
    # フォローしようとしている other_climber が自分自身ではないかを検証
    unless self == other_climber
      # self = current_climber
      # find_or_create_by　 = 保存
      relationships.find_or_create_by(follow_id: other_climber)
    end
  end

  # フォローがあればアンフォローする
  def unfollow(other_climber)
    relationship = relationships.find_by(follow_id: other_climber)
    # relationship が存在すれば destroy します
    relationship.destroy if relationship
  end

  # self.followings によりフォローしている climber 達を取得し、
  # include?(other_climber) によって other_climber が含まれていないかを確認
  def following?(other_climber)
    followings.include?(other_climber)
  end

  def follows_by?(climber)
    relationships.where(climber_id: climber.id).exists?
  end

  # gymをお気に入りにしているか判定をする
  # climberにはcurrent_climberが渡される
  def favorite_by?(climber)
    favorites.where(climber_id: climber.id).exists?
  end
end