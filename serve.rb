require 'sinatra'
require 'erb'

get '/' do
  # this is to demonstrate
  view = File.new('views/index.erb', 'r')
  erb(view.read)
end
