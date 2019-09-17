require 'graphql'
require_relative 'types/pet-types'
require_relative 'types/photo-types'
require_relative 'types/vaccine-types'

class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  field :pets, [PetTypes::Pet], null: false do
    description 'Get all pets of the system'
  end

  field :vaccines, [VaccineTypes::Vaccine], null: false do
    description 'Get all vaccines of the system'
  end

  field :photos, [PhotoTypes::Photo], null: false do
    description 'Get all photos of the system'
  end

  def pets
    Speaker.all
  end

  def vaccines
    Speaker.all
  end

  def photos
    Speaker.all
  end
  
end