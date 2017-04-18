# GET Requirements
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require_relative 'db/connection'
require_relative 'models/pokemon.rb'
require_relative 'models/team.rb'
require_relative 'models/trainer.rb'
require_relative 'models/show.rb'

# GET & POST
get '/pokemons' do
    @pokemons = Pokemon.all
    erb :"pokemons/index"
end

get '/pokemons/new' do
  erb :"pokemons/new"
end

get '/pokemons/trainer' do
  erb :"pokemons/trainer"
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

post '/pokemons' do
  @pokemon = Pokemon.create(name: params[:name], cp: params[:cp], img_url: params[:img_url])
  redirect "/pokemons/#{@pokemon.id}"
  end

get "/pokemons/:id/edit" do
  @name = Pokemon.find(params[:id])
  erb(:"pokemons/edit")
end

put '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemons/#{@pokemon.id}")
end

delete '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect("/pokemons")
end
