class Location < ApplicationRecord
    has_many :sighitngs
    has_many :birds, through: :sightings

end
