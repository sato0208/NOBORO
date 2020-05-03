class Gyms::GenresController < ApplicationController
  def index
    @new_genre = Genre.new
    @genres = Genre.all
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to gyms_genres_path, notice: "successfully update Genre!"
  end

  def create
    @genres = Genre.all
    @new_genre = Genre.new(genre_params)
    @new_genre.save
    redirect_to request.referer, notice: "successfully created Genre!"
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
      params.require(:genre).permit(:genre_name)
    end
end
