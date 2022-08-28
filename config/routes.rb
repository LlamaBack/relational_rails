Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/nba_teams', to: 'nba_teams#index'
  get '/nba_teams/:id', to: 'nba_teams#show'
  get '/players', to: 'players#index'
end
