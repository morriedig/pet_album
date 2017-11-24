class LikesController < ApplicationController

  def create
    @album = Album.find(params[:album_id])
    @like = @album.likes.build
    @like.user_id = current_user.id
    @like.save

    redirect_to album_path(@album)
  end


  private

  def like_params
    params.require(:like).permit(:user_id, :album_id)
  end
end
