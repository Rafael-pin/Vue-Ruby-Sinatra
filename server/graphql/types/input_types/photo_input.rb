class Types::PhotoInput < Types::BaseInputObject
  description "Attributes for creating or updating a photo"
  argument :photo, String, required: true
  argument :description, String, required: false
end