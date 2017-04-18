require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# require_relative 'db/seeds.rb'
# require_relative 'db/schema.sql'
# require_relative 'views/app.rb'

get '/pokemons' do
    @pokemons = Pokemon.all
    erb :"pokemons/index"
end

get '/pokemons/new' do
  erb :"pokemons/new"
end

# get '/pokemons/:id' do
#   @pokemon = Pokemon.find(params[:id])
#   erb :"pokemons/show"
# end
#
# post '/pokemons' do
#   @pokemons = Pokemon.create(pokemon: params[:pokemon], cp: params[:cp])
#   redirect "/pokemons/#{@pokemon.id}"
# end
#
# get "/pokemon/:id/edit" do
#   @name = Pokemon.find(params[:id])
#   erb(:"pokemons/edit")
# end

put '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemons/#{@pokemons.id}")
end

delete '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect("/pokemons")
end
