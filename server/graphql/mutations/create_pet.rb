require 'graphql'
require_relative './base_mutation'
require 'require_all'
require_all 'graphql/types/input_types/'

class Mutations::CreatePet < Mutations::BaseMutation
  description 'Creates a pet'

  argument :name, String, required: true
  argument :birth_date, String, required: false
  argument :weight, Float, required: false
  argument :profile_photo, String, required: false
  argument :kind, String, required: false
  argument :photos, [Types::PhotoInput], required: false
  argument :vaccines, [Types::VaccineInput], required: false

  def resolve(name:, birth_date:, weight:, profile_photo:, kind:, vaccines:, photos:)

    vaccines_collection = vaccines.map do |vaccine| 
      Vaccine.new(name: vaccine.name,date: vaccine.date,duration: vaccine.duration)
    end

    photos_collection = photos.map do |photo| 
      Photo.new(photo: photo.photo, description: photo.description)
    end

    pet = Pet.new(
      name: name, 
      birth_date: birth_date, 
      weight: weight, 
      profile_photo: profile_photo, 
      kind: kind,
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