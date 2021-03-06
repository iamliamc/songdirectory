class ContributorsController < ApplicationController
  before_action :require_user
  def index
    @contributors = Contributor.all
  end
  def show
    @contributor = Contributor.find(params[:id])
  end
  def new
    @contributors = Contributor.new
    @songs = Song.all
  end
  

  
  def create
    @contributors = Contributor.new(contributor_params)
    @song = Song.find(params[:song][:contributor_id])
    if @contributors.save
      @song.contributors << @contributors
      redirect_to '/contributors/' 
    else 
      render 'new' 
    end
  end
  
  def destroy
    @contributors = Contributor.find(params[:id])
    @contributors.destroy
    redirect_to '/contributors'
  end
  
  
  private 
  def contributor_params 
    params.require(:contributor).permit(:name, :age, :band, :bio, ) 
  end
end
