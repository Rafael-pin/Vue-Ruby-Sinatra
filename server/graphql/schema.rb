require 'graphql'
require_relative 'query'

class ConferenceAppSchema < GraphQL::Schema
  query QueryType
end