class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
  
  def new
    @songs = Song.new
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
