Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/nba_teams', to: 'nba_teams#index'
  get '/nba_teams/:team_id', to: 'nba_teams#show'
  get '/players', to: 'players#index'
  get '/players/:player_id', to: 'players#show'
  get '/nba_teams/:team_id/players', to: 'nba_teams#players_index'
end
