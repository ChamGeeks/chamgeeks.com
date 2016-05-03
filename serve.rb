require 'sinatra'
require 'erb'

require File.join(File.dirname(__FILE__), 'models', 'member.rb')

get '/' do
  # this is to demonstrate
  view = File.new('views/index.erb', 'r')
  erb(view.read)
end

post '/members' do
  puts "#{params}"
  @member = Member.new
  @member.email = params[:email]
  @member.password = params[:password]

  erb :'donations/new'
end
