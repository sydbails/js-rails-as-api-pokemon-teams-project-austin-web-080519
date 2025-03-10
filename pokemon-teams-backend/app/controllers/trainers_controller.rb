class TrainersController < ApplicationController
    def index
        trainers = Trainer.all 
        render json: trainers.to_json(:include => {
        :pokemons => {:only => [:id, :species, :nickname]},
        }, :except => [:updated_at, :created_at])
    end
end
