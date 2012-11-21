require 'rubygems'
require 'sinatra'

configure do
  set :port, 3000
end

get '/' do
  'Hello World!'
end
