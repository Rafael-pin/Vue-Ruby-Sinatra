require 'graphql'
require_relative 'types/pet_type'
require_relative 'types/photo_type'
require_relative 'types/vaccine_type'

class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  field :pets, [Types::PetType], null: false do
    description 'Get all pets of the system'
  end

  field :vaccines, [Types::VaccineType], null: false do
    description 'Get all vaccines of the system'
  end

  field :photos, [Types::PhotoType], null: false do
    description 'Get all photos of the system'
  end

  def pets
    Pet.all
  end

  def vaccines
    Vaccine.all
  end

  def photos
    Photo.all
  end
  
end