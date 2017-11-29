class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    if params[:search]
      @albums = Album.search(params[:search])
    end
  end

  def popular
    @albums = Album.all.order(likes_count: :desc)
  end

  def subscript
    @pets = current_user.pets
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
    @album.user_id = current_user.id
    @album.save

    redirect_to pet_path(@album.pet_id)
  end

  def show
    @album = Album.find(params[:id])
    # @albums = current_user.albums
  end

  def destroy
    @album = Album.find(params[:id])
    @pet = @album.pet_id
    @album.destroy

    redirect_to pet_path(@pet)
  end

  private

  def album_params
    params.require(:album).permit(:title, {photos: []}, :description, :pet_id, :user_id)
  end

end
