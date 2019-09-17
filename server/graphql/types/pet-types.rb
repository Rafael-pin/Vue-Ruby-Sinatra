require 'graphql'
require_relative 'base_object'

class PetTypes::Pet < Types::BaseObject
  description 'Resembles a Pet Object Type'

  # field :id, ID, null: false
  field :name, String, null: false
  # field :twitter_handle, String, null: true
  # field :bio, String, null: true
  # field :talk_title, String, null: true
  # field :photos, Photo, null: true
  # field :vaccines, Vaccine, null: true
end