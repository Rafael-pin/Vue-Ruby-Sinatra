require 'graphql'
require_relative 'base_object'

class Types::VaccineType < Types::BaseObject
  description 'Resembles a vaccine Object Type'

  field :id, ID, null: false
  # field :name, String, null: false
  # field :twitter_handle, String, null: true
  # field :bio, String, null: true
  # field :talk_title, String, null: true
end