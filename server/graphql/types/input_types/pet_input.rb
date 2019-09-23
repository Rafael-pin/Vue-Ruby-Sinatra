require 'graphql'
require 'require_all'
require_relative '../vaccine_type'
require_relative '../photo_type'
require_relative './base_input'

class Types::PetInput < Types::BaseInputObject 
  
  description "Attributes for creating or updating a pet"
  argument :name, String, required: true
  argument :birth_date, String, required: false
  argument :weight, Float, required: false
  argument :profile_photo, String, required: false
  argument :kind, String, required: false
  argument :photos, [Types::PhotoInput], required: false
  argument :vaccines, [Types::VaccineInput], required: false

end