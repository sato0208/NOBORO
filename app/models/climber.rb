class Climber < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    attachment :profile_image
    has_many :done_task, dependent: :destroy
    has_many :trophies, dependent: :destroy
end
