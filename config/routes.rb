Rails.application.routes.draw do
  root "place#index"

  resources :places, only: [ :index, :show ], controller: "place"
  resources :entries, only: [ :index, :show ], controller: "entry"
end
