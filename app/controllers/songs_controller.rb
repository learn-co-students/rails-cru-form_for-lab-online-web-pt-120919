class SongsController < ApplicationController
    #index, new, create, edit, update, and show

    def index 
        @songs = Song.all 
    end 

    def new 
        @song = Song.new
    end 

    def create 
        @song = Song.create(song_params)
        @song.save 
        redirect_to song_path(@song)
    end 

    def edit 
        @song = Song.find(params[:id])
    end 

    def update 
        @song = Song.find(params[:id])
        @song = Song.update(song_params)
        redirect_to song_path(@song)
    end
    
    def show
        @song = Song.find(params[:id]) 
    end 

    private 

    def song_params 
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end 
end
