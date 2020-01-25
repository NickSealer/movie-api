Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reservations
      resources :movies
      get '/movies-availables', to: 'movies#available_movies'
      get '/health', to: 'health#health', as: 'health'
    end
  end
end
