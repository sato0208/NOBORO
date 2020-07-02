class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後にマイページに飛ぶ
  def after_sign_in_path_for(resource)
    case resource
    when Gym
      edit_gym_path(current_gym)
    when Climber
      root_path
    end
  end

  def after_sign_out_path_for(resource)
    case resource
    when :gyms
      new_gym_session_path
    when :climber
      gyms_url
    end
  end

  # サインアップ時に保存するカラムを追加する
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gym_name, :email, :genre_id])
  end

  # データ更新時のパラメーターを設定する
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gym_name, :email, :genre_id])
  end
end
