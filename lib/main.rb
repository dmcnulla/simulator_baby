require 'sinatra'  
require_relative 'rest_data.rb'


class Simulator < Sinatra::Base
  @@data = RestData.new('temp')

  get '/:path' do
    [200, {}, @@data.get(params[:path])]
  end

  post '/:path' do
    @@data.add(params[:path], request.body.read.to_s)
    status 204
  end
end
