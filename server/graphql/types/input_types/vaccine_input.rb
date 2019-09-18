class Types::VaccineInput < Types::BaseInputObject
  description "Attributes for creating or updating a vaccine"
  argument :name, String, required: true
  argument :date, String, required: false
  argument :duration, Integer, required: false
end