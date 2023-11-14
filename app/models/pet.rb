class Pet < ApplicationRecord
  def create
    @pet = Pet.new(
      name: params["name"],
      age: params["age"],
      breed: params["breed"],
    )
    @pet.save
    render :show
  end
end
