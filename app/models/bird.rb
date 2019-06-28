class Bird < ApplicationRecord
   has_many :sightings
   has_many :locations, through: :sightings

   def index
      birds = Bird.all
      render json: birds
   end

   def show
      bird = Bird.find_by(id: params[:id])
      render json: bird
   end

end
