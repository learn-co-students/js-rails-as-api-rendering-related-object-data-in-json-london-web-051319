Rails.application.routes.draw do
  resources :sightings, :birds, :locations
  get '/birds' => 'birds#index'
end
