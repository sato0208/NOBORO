class Gyms::GenresController < ApplicationController
  before_action :authenticate_gym!

  def index
    @new_genre = Genre.new
    @genres = Genre.all
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to gyms_genres_path, notice: 'successfully update Genre!'
  end

  def create
    @genres = Genre.all
    @new_genre = Genre.new(genre_params)
    if @new_genre.save
      redirect_to request.referrer || root_url, notice: 'successfully created Genre!'
    else
      render :index
    end
  end

  def new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def destroy
  end

  private

  def genre_params
    params.require(:genre).permit(:genre_name,:genre_image)
  end
end
