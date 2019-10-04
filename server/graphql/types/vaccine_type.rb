require 'graphql'
require_relative 'base_object'

class Types::VaccineType < Types::BaseObject
  description 'Resembles a vaccine Object Type'

  field :id, ID, null: false
  field :name, String, null: true
  field :date, String, null: true
  field :duration, Integer, null: true
  field :show_results, String, null: true
  field :calculate_duration_date, Integer, null: true

end