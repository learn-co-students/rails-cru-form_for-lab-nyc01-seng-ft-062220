class GenresController < ApplicationController
    before_action :find_genre, only: [:show, :edit, :update]
    def index
        @genres = Genre.all
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end
end
