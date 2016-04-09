require 'sinatra'
require_relative 'rest_data.rb'

class Simulator < Sinatra::Base
  set :data, RestData.new('temp')

  get '/:path' do
    [200, {}, Simulator.data.get(params[:path])]
  end

  post '/:path' do
    [204, {}, Simulator.data.add(params[:path], request.body.read.to_s)]
  end

  delete '/:path' do
    [204, {}, Simulator.data.delete(params[:path])]
  end
end
