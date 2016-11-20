class ComicController < ApplicationController
    def index
        @most_recent_comic = Comic.last
        @first_comic = Comic.first
        @random_comic_id = rand(1..Comic.all.length)
    end 

    def show 
        @most_recent_comic = Comic.last
        @first_comic = Comic.first
        @random_comic_id = rand(1..Comic.all.length)


        @current_comic = Comic.find(params[:id])
    end 
end
