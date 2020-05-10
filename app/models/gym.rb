class Gym < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :gym_image

  has_many :tasks, dependent: :destroy
  has_many :infos, dependent: :destroy
  belongs_to :genre
  has_many :favorites, dependent: :destroy

  # gymをお気に入りにしているか判定をする
  # climberにはcurrent_climberが渡される
  def favorite_by?(climber)
    favorites.where(climber_id: climber.id).exists?
  end

  def self.search(search)
    return Gym. unless search
    Gym.where(['content LIKE ?', "%#{search}%"])
  end

end
