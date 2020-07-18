class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genres_params)
    redirect_to genre_path(genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.update(genres_params)
    redirect_to genre_path(genre)
  end

  private 
  
  def genres_params
    params.require(:genre).permit(:name)
  end

end
