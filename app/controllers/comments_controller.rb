class CommentsController < ApplicationController
  def new
    @comments = Comment.new
  end
  
  def show
    @comment = Comment.find(params[:id]) 
  end
  
  def create
    @comments = Comment.new(comment_params) 
    if @comments.save 
      redirect_to '/songs/' 
    else 
      render 'new' 
    end
  end
  
  private 
  def comment_params 
    params.require(:comment).permit(:title, :content, :song_id) 
  end
end
