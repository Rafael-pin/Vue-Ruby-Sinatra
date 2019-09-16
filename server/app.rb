require 'sinatra'
require 'sinatra/activerecord'
require './models/pet'
require './models/photo'
require './models/vaccine'

class ConferenceApp < Sinatra::Base

  get '/' do
    'It Works!'
  end
end
