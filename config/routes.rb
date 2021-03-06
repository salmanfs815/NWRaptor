Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }
  root 'homepage#index'
  get 'import_vehicles' => 'moji_vehicles#add_vehicles'
  get 'get_matches' => 'trips#matches'
  resources :trip_matches
  get 'accept_match' => 'trip_matches#accept'

  resources :moji_vehicles

  get '/nearby', to: 'homepage#nearby'
  get '/stats',   to: 'homepage#stats'
end
