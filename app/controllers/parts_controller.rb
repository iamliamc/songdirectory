class PartsController < ApplicationController
  def new
    @parts = Part.new
    #@song = Song.find(params[:song])
    #@contributor = Contributor.find(params[:contributor_id])
  end

  def show
      @parts = Part.find(params[:id])
  end
  
  def create
    @contributors = Contributor.find(params[:contributor_id])
    @song = Song.find(params[:song])
    #if @parts.save# --- i'm not even getting a part to save... 
    @song.contributors << @contributors
    redirect_to '/contributors/' + params[:contributor_id].to_s
  end

  def index
    @parts = Part.all
  end
  
  def destroy
    @parts = Part.find(params[:id])
    @part_song = @parts.song_id
    @parts.destroy
    redirect_to '/songs/' + @part_song.to_s
  end




  private 
  def parts_params 
    params.require(:parts).permit(:contributor_id, :song_id) 
  end
end