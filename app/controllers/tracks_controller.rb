class TracksController < ApplicationController

  def create
    @pet = Pet.find(params[:pet_id])
    @track = @pet.tracks.build
    @track.user_id = current_user.id
    @track.save

    redirect_to pet_path(@pet)
  end

  def destroy
    track = current_user.tracks.find(params[:id])
    pet = track.pet_id
    track.destroy

    redirect_to pet_path(pet)
  end

  private

  def track_params
    params.require(:track).permit(:pet_id, :user_id)
  end

end
