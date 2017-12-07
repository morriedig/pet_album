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

    respond_to do |format|
      format.html { redirect_to :back }
      format.js # destroy.js.erb
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :user_id, :album_id)
  end

end
