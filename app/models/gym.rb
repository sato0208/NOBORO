class Gym < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks, dependent: :destroy
  has_many :infos, dependent: :destroy
  belongs_to :genre

  def Gym.search(how_search)
      if how_search == "1"
       Gym.where(['gym_name LIKE ?', "%#{search}%"])
      else
       Gym.all
     end
  end
end
