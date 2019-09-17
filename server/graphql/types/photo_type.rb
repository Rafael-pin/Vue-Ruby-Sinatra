require 'graphql'
require_relative 'base_object'

class Types::PhotoType < Types::BaseObject
  description 'Resembles a photo Object Type'

  field :id_photo, ID, null: false
  field :photo, String, null: false
  field :description, String, null: true
  
end