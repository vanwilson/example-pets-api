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
end
