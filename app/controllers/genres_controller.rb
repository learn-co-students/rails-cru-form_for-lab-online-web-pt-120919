
class GenresController < ApplicationController 
    #CREATE
    def new
        @genre = Genre.new
    end

    def create 
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)        
    end

    #READ
    def index
        @genre = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])        
    end

    #UPDATE
    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    private
    def genre_params
        params.require(:genre).permit(:name)
    end
end 