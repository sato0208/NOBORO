class HomesController < ApplicationController
  def about
  end

  def top
  end

  def new_guest
    climber = Climber.find_or_create_by!(email: 'guest@example.com') do |climber|
      climber.password = SecureRandom.urlsafe_base64
      climber.name = "ゲストユーザー"
      # climber.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
    sign_in climber
    redirect_to gyms_url, notice: 'ゲストユーザーとしてログインしました。'
  end
end

