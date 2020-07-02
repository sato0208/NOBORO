class TestsessionsController < ApplicationController
  def create
    climber = Climber.find_or_create_by!(email: 'guest@example.com') do |climber|
      climber.password = SecureRandom.urlsafe_base64
      # climber.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
    sign_in climber
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

end
