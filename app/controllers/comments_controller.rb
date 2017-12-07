class CommentsController < ApplicationController

  def create
    @album = Album.find(params[:album_id])
    @comment = @album.comments.create(comment_params)
    @comment.user_id = current_user.id
    
    @comment.save
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :user_id, :album_id)
  end

end
