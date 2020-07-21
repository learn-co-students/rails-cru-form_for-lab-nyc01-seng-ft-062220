class SongsController < ApplicationController
    before_action :find_song, only: [:show, :edit, :update]
    def index
        @songs = Song.all
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

    def find_song
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(:name, :genre_id, :artist_id)
    end
end
