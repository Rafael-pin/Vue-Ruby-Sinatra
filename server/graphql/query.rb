require 'graphql'
require_relative 'types/pet_type'
require_relative 'types/photo_type'
require_relative 'types/vaccine_type'

class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  field :pets, [Types::PetType], null: false do
    description 'Get all pets of the system'
  end

  field :vaccines, [Types::VaccineType], null: true do
    description 'Get all vaccines of the system'
    argument :id , ID, required: true
  end

  field :photos, [Types::PhotoType], null: true do
    description 'Get all photos of the system'
  end

  field :pet, Types::PetType, null: true do
    description 'Get a pet of the system'
    argument :id , ID, required: true
  end

  def pets
    Pet.all
  end

  def pet(id)
    Pet.find_by(id)
  end

  def vaccines(id)
    Vaccine.find_by(pet_id: Pet.id) if id.present?
  end

  def photos
    Photo.all
  end
  
end