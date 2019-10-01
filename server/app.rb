require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/json'
require 'rack/contrib'
require 'require_all'
require 'rack/cors'
require_relative './graphql/schema'
require_all './models'

class ConferenceApp < Sinatra::Base
  set :database_file, 'config/database.yml'
  use Rack::PostBodyContentTypeParser
  use Rack::Cors do
    allow do
      origins 'localhost:8080'
      resource '*', :headers => :any, :methods => [:get, :post, :options]
    end
  end

  post '/graphql' do
    content_type 'application/json'
    result = ConferenceAppSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil }
    )
    json result
  end

end
