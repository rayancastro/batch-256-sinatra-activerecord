require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all

  erb :index
end

post '/restaurants' do
  restaurant = Restaurant.new(name: params[:name], city: params[:city])
  restaurant.save

  redirect '/'
end

get '/restaurants/new' do
  erb :new
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])

  erb :show
end


# ERB Embedded Ruby
