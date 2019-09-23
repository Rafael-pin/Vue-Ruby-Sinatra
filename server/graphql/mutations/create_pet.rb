require 'graphql'
require_relative './base_mutation'
require 'require_all'
require 'byebug'
require_all 'graphql/types/input_types/'

class Mutations::CreatePet < Mutations::BaseMutation
  description 'Creates a pet'
  
  argument :pet, Types::PetInput, required: true

  def resolve(pet:)

    photos_collection = pet[:photos].map do |photo| 
      Photo.new(photo: photo.photo, description: photo.description)
    end

    vaccines_collection = pet[:vaccines].map do |vaccine| 
      Vaccine.new(name: vaccine.name,date: vaccine.date,duration: vaccine.duration)
    end

    pet = Pet.new(
      name: pet.name, 
      birth_date: pet.birth_date, 
      weight: pet.weight, 
      profile_photo: pet.profile_photo, 
      kind: pet.kind,
      photos: photos_collection,
      vaccines: vaccines_collection
    )

    if pet.save
    {
      sucess: true,
      errors: []
    }
    else
    {
      sucess: false,
      errors: pet.errors.full_messages
    }
    end
  end

  field :success, Boolean, null: false
  field :errors, [String], null: false
  
end