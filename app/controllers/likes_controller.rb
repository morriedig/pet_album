class LikesController < ApplicationController

  def create
    @album = Album.find(params[:album_id])
    likes = @album.likes.all
    has = true

    likes.each do |like|
      if like.user_id == current_user.id
        like_num = like.id
        return has = false
      end
    end

    if has
      @like = @album.likes.build
      @like.user_id = current_user.id
      @like.save
    else
      @like = @album.likes.where("like.id = #{like_num}")
      @like.destroy

    end

    redirect_to album_path(@album)
  end



  private

  def like_params
    params.require(:like).permit(:user_id, :album_id)
  end
end
