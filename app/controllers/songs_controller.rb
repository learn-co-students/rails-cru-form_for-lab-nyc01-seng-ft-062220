class SongsController < ApplicationController
    def show
        @song = Song.find(params[:id])
    end 

    def new
        @song = Song.new
    end 

    def create
        @song = Song.new(s_params)
        @song.save
        redirect_to song_path(@song)
    end 

    def edit
        @song = Song.find(params[:id])
    end 

    def update
        @song = Song.find(params[:id])
        @song.update(s_params)
        redirect_to song_path(@song)
    end 

    private 

    def s_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end 
end
