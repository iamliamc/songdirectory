class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
  
  def new
    @songs = Song.new
  end
  
  def show
    @songs = Song.find(params[:id])
  end
  
  def destroy
    @songs = Song.find(params[:id])
    @songs.destroy
    redirect_to '/songs'
  end
  
  def create 
  @songs = Song.new(song_params) 
  if @songs.save 
    redirect_to '/songs' 
  else 
    render 'new' 
  end 
  end
  
  private 
  def song_params 
    params.require(:song).permit(:title, :directory, :tempo, :key, :sample) 
  end
  
end
