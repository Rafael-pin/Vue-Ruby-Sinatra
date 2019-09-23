require 'graphql'
require 'require_all'
require_all 'graphql/mutations'

class MutationType < GraphQL::Schema::Object
  description "The mutation root of this schema"

  field :create_pet, mutation: Mutations::CreatePet
  field :create_vaccine, mutation: Mutations::CreateVaccine
  field :create_photo, mutation: Mutations::CreatePhoto

end