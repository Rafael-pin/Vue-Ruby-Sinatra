require 'sinatra'
require 'sinatra/activerecord'
require './models/pet'
require './models/photo'
require './models/vaccine'
require 'sinatra/json'
require 'rack/contrib'
require_relative 'models/pet'
require_relative 'models/photo'
require_relative 'models/vaccine'

class ConferenceApp < Sinatra::Base

  set :database, "sqlite3:project-name.sqlite3"

  get '/' do
    'It Works!'
  end

  get '/hello.json' do
    message = { success: true, message: 'hello'}
    json message
  end

  use Rack::PostBodyContentTypeParser

  post '/graphql' do
    result = ConferenceAppSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil },
    )
    json result
  end

end
