require 'pry'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/json'
require 'rack/contrib'
require 'byebug'

require_relative './models/pet'
require_relative './models/photo'
require_relative './models/vaccine'
require_relative './graphql/schema'

class ConferenceApp < Sinatra::Base
  set :database_file, 'config/database.yml'
  use Rack::PostBodyContentTypeParser 

  get '/' do
    'It Works!'
  end

  get '/hello.json' do
    message = { success: true, message: 'hello'}
    json message
  end

  get '/pets' do
    @pets = Pet.all
    json @pets
  end

  post '/graphql' do
    result = ConferenceAppSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil },
    )
    json result
  end

end
