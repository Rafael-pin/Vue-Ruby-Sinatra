require 'graphql'
require_relative 'base_object'

class Types::VaccineType < Types::BaseObject
  description 'Resembles a vaccine Object Type'

  field :id_vaccine, ID, null: false
  field :name, String, null: false
  field :date, String, null: true
  field :duration, Integer, null: true

end