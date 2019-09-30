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

  # config.middleware.insert_before 0, Rack::Cors do
  #   allow do
  #     origins '*'
  #     resource '*', :headers => :any, :methods => [:get, :post, :options]
  #   end
  # end

  # config.action_dispatch.default_headers = {
  #   'Access-Control-Allow-Origin' => '*',
  #   'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
  # }

  get '/hello.json' do
    message = { success: true, message: 'hello'}
    json message
  end

  get '/pets' do
    @pets = Pet.all
    json @pets
  end

  post '/graphql' do
    byebug
    content_type 'application/json'
    result = ConferenceAppSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil }
    )
    json result
  end

end
