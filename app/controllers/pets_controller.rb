class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render :index
  end

  def create
    @pet = Pet.create(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
    )
    render :show
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render :show
  end
end
