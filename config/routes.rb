Rails.application.routes.draw do
  resources :sports, only: [:show, :new, :create, :edit, :update]
  resources :events
  get '/', to: 'sports#index' as: 'sports'
  get '/paintball', to: 'sports#paintball', as: 'paintball'
  get '/motocross', to: 'sports#motocross', as: 'motocross'
  get '/parkour', to: 'sports#parkour', as: 'parkour'
  get '/rock_climbing', to: 'sports#rock_climbing', as: 'rock_climbing'
  get '/sky_diving', to: 'sports#sky_diving', as: 'sky_diving'
  get '/jet_skiing', to: 'sports#jet_skiing', as: 'jet_skiing'
  get '/drifting', to: 'sports#drifting', as: 'drifting'
  # get '/paintball', to: 'sports#paintball' as: 'paintball'


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
