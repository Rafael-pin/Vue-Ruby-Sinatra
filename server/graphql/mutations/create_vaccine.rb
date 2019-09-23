require 'graphql'
require_relative 'base_mutation'

class Mutations::CreateVaccine < Mutations::BaseMutation
  description 'Creates a vaccine'

  argument :name, String, required: true
  argument :date, String, required: false
  argument :duration, Float, required: false

  def resolve(name:, date:, duration:)

    vaccine = Vaccine.new(
      name: name, 
      date: date, 
      duration: duration
    )

    if vaccine.save
      {
      sucess: true,
      errors: []
      }
    else 
      {
      sucess: false,
      errors: vaccine.errors.full_messages
      }
    end
  end

  field :success, Boolean, null: false
  field :errors, [String], null: false
  
end