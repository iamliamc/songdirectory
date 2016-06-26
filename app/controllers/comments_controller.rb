class CommentsController < ApplicationController
  before_action :require_user
  def new
    @comments = Comment.new
  end
  
  def show
    @comment = Comment.find(params[:id]) 
  end
  
  def edit
    @comments = Comment.find(params[:id])
  end
  
  def update
    @comments = Comment.find(params[:id])
    if @comments.update_attributes(comment_params)
      flash[:success] = "Comment updated"
      redirect_to '/songs/' + @comments.song_id.to_s
    else
      render 'edit'
    end
  end
  
  def create
    @comments = Comment.new(comment_params) 
    if @comments.save 
      redirect_to '/songs/' + @comments.song_id.to_s 
    else 
      render 'new' 
    end
  end
  
  def destroy
    @comments = Comment.find(params[:id])
    @commentsID = @comments.song_id.to_s
    @comments.destroy
    redirect_to '/songs/' + @commentsID
  end
  
  private 
  def comment_params 
    params.require(:comment).permit(:title, :content, :song_id) 
  end
end
