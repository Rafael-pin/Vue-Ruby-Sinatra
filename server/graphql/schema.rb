require 'graphql'
require_relative './query'
require_relative './types/mutation_type'

class ConferenceAppSchema < GraphQL::Schema
  query QueryType
  mutation MutationType
end