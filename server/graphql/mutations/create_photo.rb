require 'graphql'
require_relative 'base_mutation'

class Mutations::CreatePhoto < Mutations::BaseMutation
  description 'Creates a photo'

  argument :photo, String, required: true
  argument :description, String, required: false

  def resolve(photo:, description:)

    photo = Photo.new(
      photo: photo,  
      description: description
    )

    if photo.save
      {
      sucess: true,
      errors: []
      }
    else 
      {
      sucess: false,
      errors: photo.errors.full_messages
      }
    end
  end

  field :success, Boolean, null: false
  field :errors, [String], null: false
  
end