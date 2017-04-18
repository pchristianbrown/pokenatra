require 'active_record'
# require 'ffaker'
require 'pg'

require_relative '../models/trainer'
require_relative '../models/pokemon'
require_relative '../models/team'

Trainer.destroy_all
Pokemon.destroy_all
Teams.destroy_all

Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer_id:"1")
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer_id:"2")
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer_id:"3")
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer_id:"4")
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer_id:"5")
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer_id:"6")
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer_id:"7")
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer_id:"8")

Trainer.create(name: "Joey", level: rand(100), img_url: "#", id:"#")
Trainer.create(name: "Mary", level: rand(100), img_url: "#", id:"#")
Trainer.create(name: "Chloe", level: rand(100), img_url: "#", id:"#")
Trainer.create(name: "Larry", level: rand(100), img_url: "#", id:"#")
Trainer.create(name: "Zoey", level: rand (100), img_url: "#", id:"#")

Team.create(name: "Team Kepoman", id:"#")
Team.create(name: "Team Manpoke", id:"#")
Team.create(name: "Team Pomonke", id:"#")
