class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting
            render json: sighting, include: [:location, :bird], except: [:updated_at]
        else 
            render json: { message: "There is no sighting corresponding with that id."
            }   
        end
        # render json: { sighting: {
        #     bird: {
        #         name: sighting.bird.name,
        #         species: sighting.bird.species
        #     },
        #     location: {
        #         latitude: sighting.location.latitude,
        #         longitude: sighting.location.longitude
        #     }
        # }}        
    end

    def index
        sightings = Sighting.all
        render json: sightings, include: [:location, :bird], except: [:updated_at]
    end
end
