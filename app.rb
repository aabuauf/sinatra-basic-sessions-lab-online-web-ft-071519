require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base


get '/' do
  erb :index
end

post '/checkout' do
  @session = session
  
  @item = params[:item]
 erb :checkout
end
end