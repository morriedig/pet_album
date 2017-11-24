class CommentsController < ApplicationController

  def create
    @album = Album.find(params[:album_id])
    @comment = @album.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save

    redirect_to album_path(@album)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @album = @comment.album_id
    @comment.destroy

    redirect_to album_path(@album)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :user_id, :album_id)
  end

end
