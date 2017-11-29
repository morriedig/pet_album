class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    @pet.user_id = current_user.id
    @pet.save

    redirect_to pet_path(@pet)
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :age, :photo, :description, :user_id)
  end

end
