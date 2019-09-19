require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/json'
require 'rack/contrib'
require 'require_all'
require_relative './graphql/schema'
require_all './models'

class ConferenceApp < Sinatra::Base
  set :database_file, 'config/database.yml'
  use Rack::PostBodyContentTypeParser 

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
