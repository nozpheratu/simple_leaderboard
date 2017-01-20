Rails.application.routes.draw do

  namespace :v1 do
    jsonapi_resources :results
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/leaderboard', to: 'leaderboard#index'

  resources :results
end
