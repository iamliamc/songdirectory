class SongsController < ApplicationController
  before_action :require_user
  #before_action :require_user, only: [:index, :show]
  
  def index
    @songs = Song.all
  end
  
  def new
    @songs = Song.new
    @contributors = Contributor.all
  end
  
  def show
    @songs = Song.find(params[:id])
    @comments = @songs.comments
    @contributors = @songs.contributors
  end
  
  def destroy
    @songs = Song.find(params[:id])
    @songs.destroy
    redirect_to '/songs'
  end
  
  def edit
    @songs = Song.find(params[:id])
  end
  
  def update
    @songs = Song.find(params[:id])
    if @songs.update_attributes(song_params)
      flash[:success] = "Song updated"
      redirect_to '/songs'
    else
      render 'edit'
    end
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
