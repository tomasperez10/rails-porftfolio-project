Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users do
    resources :video_games, only: [:index]
  end

  resources :video_games do
    resources :genres, except: [:destroy]
  end

  resources :genres, only: [:index, :show]

  get '/search', to: 'video_games#search'

  get '/auth/google/callback', to: 'users#google_login'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

end
