class Climbers::GymsController < ApplicationController
  def index
    @gyms = Gym.all
    @genres = Genre.all
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
      @gyms = @genre.gyms.page(params[:page]).per(8).order('updated_at DESC')
    else
      @gyms = Gym.page(params[:page]).per(8).order('updated_at DESC')
    end
  end

  def show
    @gym = Gym.find(params[:id])
    @tasks = @gym.tasks
    @grades_all = Grade.all
    # @grades = Grade.all
    # # @grades と @tasks を紐づけて viewに渡す
    # @grades = @grades.map do |grade|  ## gradeが持っているtaskを修正するためにmapで全要素をまわす
    #   grade.tasks = [] ## いったんgradeが持っているtasksを空にする
    #   @tasks.each do |task| ## tasksをeach文でまわす
    #     if grade.id == task.grade_id ## このtaskがこのgradeに紐づいているか検証
    #       grade.tasks.push(task) ## 紐づいている場合gradeのtasksに追加
    #     end
    #   end
    # end
  end

  def favorites
    # gym_favorites = climberモデルに記述.gymモデルを参照する
    @gyms = current_climber.gym_favorites.includes(:climber).recent
  end

  def search
    @genres = Genre.all
    # 値が入力されていれば、whereメソッドと部分一致検索で、店舗情報を取得する。
    @gyms = if params[:gym_name]
              Gym.where('gym_name LIKE ?', "%#{params[:gym_name]}%")
            else
              Gym.all
    end
  end

  private

  def gym_params
    params.require(:gym).permit(:genre_id, :description, :gym_name, :post_code, :address, :gym_url, :gym_image)
  end
end

# - map は 操作する対象自体のデータを変更したい場合
# - each は操作する対象のデータは変更し