class Gyms::GenresController < ApplicationController
  def index
  end

  def update
  end

  def create
  end

  def new
  end

  def edit
  end

  def destroy
  end

  private
    def genre_params
      params.require(:genre).permit(:genre_name)
    end
end
